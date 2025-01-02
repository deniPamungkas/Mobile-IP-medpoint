class Doctor {
  final String name;
  final String gender;
  final String specializationId;
  final String userId;

  Doctor(
      {required this.gender,
      required this.name,
      required this.specializationId,
      required this.userId});

  factory Doctor.fromJson(Map<String, dynamic> json) {
    return switch (json) {
      {
        "gender": String gender,
        "name": String name,
        "specialization_id": String specializationId,
        "user_id": String userId
      } =>
        Doctor(
            gender: gender,
            name: name,
            specializationId: specializationId,
            userId: userId),
      _ => throw const FormatException('Failed to load doctors.'),
    };
  }
}

class DoctorResponse {
  final bool success;
  final List<Doctor> data;
  final String message;

  DoctorResponse(
      {required this.data, required this.success, required this.message});

  factory DoctorResponse.fromJson(Map<String, dynamic> json) {
    return switch (json) {
      {
        "success": bool success,
        "data": List data,
        "Message": String message,
      } =>
        DoctorResponse(
            success: success,
            data: data
                .map(
                    (doctor) => Doctor.fromJson(doctor as Map<String, dynamic>))
                .toList(),
            message: message),
      _ => throw const FormatException("failed to load doctors"),
    };
  }
}
