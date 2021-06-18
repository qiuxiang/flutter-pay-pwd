# pay_pwd

[![pub package](https://img.shields.io/pub/v/pay_pwd.svg)](https://pub.dartlang.org/packages/pay_pwd)

6 digital payment password input.

Online demo: https://qiuxiang.github.io/flutter-pay-pwd/

<img src="https://user-images.githubusercontent.com/1709072/122147951-63339400-ce8c-11eb-883b-cfbe7e604635.png" width=245><img src="https://user-images.githubusercontent.com/1709072/122147952-63cc2a80-ce8c-11eb-9c34-0761bd265ac3.png" width=245><img src="https://user-images.githubusercontent.com/1709072/122147953-6464c100-ce8c-11eb-865d-421703254742.png" width=245>

## Usage

```dart
pay(
  context: context,
  hintText: 'Buy Goods',
  amount: '199.99',
  onSubmit: (password) async {
    // await submit
    // return error message if password incorrect
  },
);
```
