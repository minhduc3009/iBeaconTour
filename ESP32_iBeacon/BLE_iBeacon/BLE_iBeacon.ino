/*
Tạo một máy chủ BLE sẽ gửi các khung iBeacon định kỳ.
Thiết kế tạo máy chủ BLE là:
1.Tạo một máy chủ BLE
2.Tạo dữ liệu quảng cáo
3.Bắt đầu quảng cáo.
4.Chờ đợi
5.Dừng quảng cáo.
6.Chế độ ngủ sâu
*/

#include "sys/time.h"
#include "BLEDevice.h"
#include "BLEUtils.h"
#include "BLEBeacon.h"
#include "esp_sleep.h"

//--------> Chỉnh các thông số sau trước khi nạp code cho một thiết bị ESP32 mới
#define GPIO_DEEP_SLEEP_DURATION     3  // ngủ 'x' giây và sau đó thức dậy phát iBeacon
#define BEACON_UUID "83d73223-b2d3-4724-b555-2df57a38709a" // UUID 1 128-Bit (Có thể truy cập link https://www.uuidgenerator.net/   để tạo UUID mới)
#define BEACON_NAME "Beacon-01" // Tên hiển thị của thiết bị


RTC_DATA_ATTR static time_t last;        // remember last boot in RTC Memory
RTC_DATA_ATTR static uint32_t bootcount; // remember number of boots in RTC Memory

#ifdef __cplusplus
extern "C" {
#endif

uint8_t temprature_sens_read();
//uint8_t g_phyFuns;

#ifdef __cplusplus
}
#endif

BLEAdvertising *pAdvertising;
struct timeval now;

void setBeacon() {

  BLEBeacon oBeacon = BLEBeacon();
  oBeacon.setManufacturerId(0x4C00); // fake Apple 0x004C LSB (ENDIAN_CHANGE_U16!)
  oBeacon.setProximityUUID(BLEUUID(BEACON_UUID));
  oBeacon.setMajor((bootcount & 0xFFFF0000) >> 16);
  oBeacon.setMinor(bootcount&0xFFFF);
  BLEAdvertisementData oAdvertisementData = BLEAdvertisementData();
  BLEAdvertisementData oScanResponseData = BLEAdvertisementData();
  
  oAdvertisementData.setFlags(0x04); // BR_EDR_NOT_SUPPORTED 0x04
  
  std::string strServiceData = "Hi. My name is VirtueVu";
  
  strServiceData += (char)26;     // Len
  strServiceData += (char)0xFF;   // Type
  strServiceData += oBeacon.getData(); 
  oAdvertisementData.addData(strServiceData);
  
  pAdvertising->setAdvertisementData(oAdvertisementData);
  pAdvertising->setScanResponseData(oScanResponseData);
  pAdvertising->setAdvertisementType(ADV_TYPE_NONCONN_IND);

}

void setup() {

    
  Serial.begin(115200);
  gettimeofday(&now, NULL);

  Serial.printf("start ESP32 %d\n",bootcount++);

  Serial.printf("deep sleep (%lds since last reset, %lds since last boot)\n",now.tv_sec,now.tv_sec-last);

  last = now.tv_sec;
  
  // Create the BLE Device
  BLEDevice::init(BEACON_NAME);

  // Create the BLE Server
  // BLEServer *pServer = BLEDevice::createServer(); // <-- no longer required to instantiate BLEServer, less flash and ram usage

  pAdvertising = BLEDevice::getAdvertising();
  
  setBeacon();
   // Start advertising
  pAdvertising->start();
  Serial.println("Advertizing started...");
  // delay(100);
  // pAdvertising->stop();
  // Serial.printf("enter deep sleep\n");
  // esp_deep_sleep(1000000LL * GPIO_DEEP_SLEEP_DURATION);
  // Serial.printf("in deep sleep\n");
}

void loop() {
}
