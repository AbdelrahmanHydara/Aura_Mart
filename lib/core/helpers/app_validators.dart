class AppValidators {
  static String? requiredField(String? value, {String fieldName = "هذا الحقل"}) {
    if (value == null || value.trim().isEmpty) {
      return "$fieldName مطلوب";
    }
    return null;
  }

  static String? name(String? value) {
    if (value == null || value.trim().isEmpty) {
      return "الاسم مطلوب";
    }
    if (!RegExp(r'^[ء-يa-zA-Z\s]+$').hasMatch(value)) {
      return "الاسم يجب أن يحتوي على حروف فقط";
    }
    if (value.trim().length < 3) {
      return "الاسم قصير جدًا";
    }
    return null;
  }

  static String? password(String? value) {
    if (value == null || value.isEmpty) {
      return "كلمة المرور مطلوبة";
    }
    if (value.length < 8) {
      return "كلمة المرور يجب أن تكون 8 حروف على الأقل";
    }
    if (!RegExp(r'^(?=.*[A-Z])(?=.*\d)').hasMatch(value)) {
      return "كلمة المرور يجب أن تحتوي على حرف كبير ورقم";
    }
    return null;
  }
}
