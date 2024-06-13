# 파마브로스 Flutter 과제

## 작업 기한
🗓️ 2024.06.12 ~ 2024.06.16

## 구현해야 할 화면
1. **홈 화면**
2. **제품 상세 화면**
3. **내정보 화면**

## 디자인
[**🎨 Figma**](https://www.figma.com/design/7x5d08KGun3gaNI6L7aYfs/Pharma-Bros-Flutter-Developers-Assignment-Design?node-id=0-1&t=kjbI6LZgtxTBAoHD-1)
## 제품 상세 화면

### 홈
>- **Method:** GET
>- **Endpoint:** `api.friendly-pharmacist.com/search/product`
>- **Parameters:**
>    - `target_word: String`
>    - `page: int`
>    - `size: 10` (고정)
- 최초 진입 시 "YDY"를 자동으로 검색하고 결과를 표시합니다.
- 리스트 아이템을 탭하면 제품 상세 화면으로 이동합니다.

### 제품 상세 화면
>- **Method:** GET
>- **Endpoint:** `api.friendly-pharmacist.com/product/detail`
>- **Parameters:**
>    - `product_id: int`
- 제품명 옆에 복사 버튼이 있어 제품명을 복사할 수 있습니다.
- 섭취 용법에 1일과 1회는 고정입니다.
- 섭취 방법은 리스폰스에서 받은 것만 노출되어야 합니다.
    ```json
    "nutrition_information" // 영양 기능 정보 입니다.
    "product_features" // 제품 특징 입니다.
    ```

### 내 정보 화면
- 호출이 필요한 API 없습니다. 
- 최상단에 유저 정보는 본인이름과 이메일을 기입합니다.
- 각 섹션에 버튼들은 탭이 되어야 하지만 화면이 이동하는 액션은 없습니다. 
- 버전 정보는 [pubspec.yaml](https://github.com/JayG-5/pharma_bros/blob/main/pubspec.yaml#L19) 파일에 version 정보와 일치해야합니다. 
- 이용약관 및 개인정보처리방침 링크(웹뷰):
    - 이용약관: [https://www.pharma-bros.com/terms](https://www.pharma-bros.com/terms)
    - 개인정보처리방침: [https://www.pharma-bros.com/privacy](https://www.pharma-bros.com/privacy)