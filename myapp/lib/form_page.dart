import 'package:flutter/material.dart';

class FormPage extends StatefulWidget {
  const FormPage({super.key});

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  final _formKey = GlobalKey<FormState>();

  // ============================================================
  // PERSONAL INFORMATION CONTROLLERS
  // ============================================================

  final TextEditingController positionDesiredController =
      TextEditingController();

  final TextEditingController nameController =
      TextEditingController();

  final TextEditingController mobileController =
      TextEditingController();

  final TextEditingController emailController =
      TextEditingController();

  final TextEditingController addressController =
      TextEditingController();

  final TextEditingController nationalityController =
      TextEditingController();

  final TextEditingController maritalController =
      TextEditingController();

  final TextEditingController weightController =
      TextEditingController();

  final TextEditingController heightController =
      TextEditingController();

  final TextEditingController dobController =
      TextEditingController();

  final TextEditingController placeOfBirthController =
      TextEditingController();

  final TextEditingController ageController =
      TextEditingController();

  final TextEditingController genderController =
      TextEditingController();

  final TextEditingController religionController =
      TextEditingController();

  final TextEditingController occupationController =
      TextEditingController();

  // ============================================================
  // FAMILY BACKGROUND CONTROLLERS
  // ============================================================

  final TextEditingController spouseNameController =
      TextEditingController();

  final TextEditingController spouseOccupationController =
      TextEditingController();

  final TextEditingController child1Controller =
      TextEditingController();

  final TextEditingController child1BirthController =
      TextEditingController();

  final TextEditingController child2Controller =
      TextEditingController();

  final TextEditingController child2BirthController =
      TextEditingController();

  final TextEditingController child3Controller =
      TextEditingController();

  final TextEditingController child3BirthController =
      TextEditingController();

  final TextEditingController fatherController =
      TextEditingController();

  final TextEditingController fatherOccupationController =
      TextEditingController();

  final TextEditingController motherController =
      TextEditingController();

  final TextEditingController motherOccupationController =
      TextEditingController();

  final TextEditingController emergencyPersonController =
      TextEditingController();

  final TextEditingController contactDetailsController =
      TextEditingController();

  // ============================================================
  // EDUCATIONAL BACKGROUND CONTROLLERS
  // ============================================================

  final TextEditingController elementarySchoolController =
      TextEditingController();

  final TextEditingController elementaryYearController =
      TextEditingController();

  final TextEditingController secondarySchoolController =
      TextEditingController();

  final TextEditingController secondaryYearController =
      TextEditingController();

  final TextEditingController vocationalSchoolController =
      TextEditingController();

  final TextEditingController vocationalYearController =
      TextEditingController();

  final TextEditingController collegeSchoolController =
      TextEditingController();

  final TextEditingController collegeYearController =
      TextEditingController();

  final TextEditingController degreeController =
      TextEditingController();

  final TextEditingController skillsController =
      TextEditingController();

  // ============================================================
  // EMPLOYMENT RECORD CONTROLLERS
  // ============================================================

  final TextEditingController company1Controller =
      TextEditingController();

  final TextEditingController position1Controller =
      TextEditingController();

  final TextEditingController from1Controller =
      TextEditingController();

  final TextEditingController to1Controller =
      TextEditingController();

  final TextEditingController company2Controller =
      TextEditingController();

  final TextEditingController position2Controller =
      TextEditingController();

  final TextEditingController from2Controller =
      TextEditingController();

  final TextEditingController to2Controller =
      TextEditingController();

  final TextEditingController company3Controller =
      TextEditingController();

  final TextEditingController position3Controller =
      TextEditingController();

  final TextEditingController from3Controller =
      TextEditingController();

  final TextEditingController to3Controller =
      TextEditingController();

  // ============================================================
  // OTHER
  // ============================================================

  final TextEditingController placeController =
      TextEditingController();

  final TextEditingController dateController =
      TextEditingController();

  // ============================================================
  // SUBMIT DATA (NO FIREBASE)
  // ============================================================

  void saveData() {
    if (!_formKey.currentState!.validate()) return;

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Bio Data successfully saved!'),
        backgroundColor: Colors.green,
      ),
    );

    clearAllFields();
  }

  // ============================================================
  // CLEAR ALL
  // ============================================================

  void clearAllFields() {
    for (final controller in [
      positionDesiredController,
      nameController,
      mobileController,
      emailController,
      addressController,
      nationalityController,
      maritalController,
      weightController,
      heightController,
      dobController,
      placeOfBirthController,
      ageController,
      genderController,
      religionController,
      occupationController,

      spouseNameController,
      spouseOccupationController,
      child1Controller,
      child1BirthController,
      child2Controller,
      child2BirthController,
      child3Controller,
      child3BirthController,
      fatherController,
      fatherOccupationController,
      motherController,
      motherOccupationController,
      emergencyPersonController,
      contactDetailsController,

      elementarySchoolController,
      elementaryYearController,
      secondarySchoolController,
      secondaryYearController,
      vocationalSchoolController,
      vocationalYearController,
      collegeSchoolController,
      collegeYearController,
      degreeController,
      skillsController,

      company1Controller,
      position1Controller,
      from1Controller,
      to1Controller,
      company2Controller,
      position2Controller,
      from2Controller,
      to2Controller,
      company3Controller,
      position3Controller,
      from3Controller,
      to3Controller,

      placeController,
      dateController,
    ]) {
      controller.clear();
    }
  }

  // ============================================================
  // DISPOSE
  // ============================================================

  @override
  void dispose() {
    positionDesiredController.dispose();
    nameController.dispose();
    mobileController.dispose();
    emailController.dispose();
    addressController.dispose();
    nationalityController.dispose();
    maritalController.dispose();
    weightController.dispose();
    heightController.dispose();
    dobController.dispose();
    placeOfBirthController.dispose();
    ageController.dispose();
    genderController.dispose();
    religionController.dispose();
    occupationController.dispose();

    spouseNameController.dispose();
    spouseOccupationController.dispose();
    child1Controller.dispose();
    child1BirthController.dispose();
    child2Controller.dispose();
    child2BirthController.dispose();
    child3Controller.dispose();
    child3BirthController.dispose();
    fatherController.dispose();
    fatherOccupationController.dispose();
    motherController.dispose();
    motherOccupationController.dispose();
    emergencyPersonController.dispose();
    contactDetailsController.dispose();

    elementarySchoolController.dispose();
    elementaryYearController.dispose();
    secondarySchoolController.dispose();
    secondaryYearController.dispose();
    vocationalSchoolController.dispose();
    vocationalYearController.dispose();
    collegeSchoolController.dispose();
    collegeYearController.dispose();
    degreeController.dispose();
    skillsController.dispose();

    company1Controller.dispose();
    position1Controller.dispose();
    from1Controller.dispose();
    to1Controller.dispose();
    company2Controller.dispose();
    position2Controller.dispose();
    from2Controller.dispose();
    to2Controller.dispose();
    company3Controller.dispose();
    position3Controller.dispose();
    from3Controller.dispose();
    to3Controller.dispose();

    placeController.dispose();
    dateController.dispose();

    super.dispose();
  }

  // ============================================================
  // FIELD
  // ============================================================

  Widget field(
    String label,
    TextEditingController controller, {
    double labelWidth = 140,
    bool required = false,
  }) {
    return SizedBox(
      height: 32,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: labelWidth,
            child: Text(
              label,
              maxLines: 1,
              overflow: TextOverflow.visible,
              style: const TextStyle(
                fontSize: 14,
                color: Color(0xFF1E1E1E),
              ),
            ),
          ),

          Expanded(
            child: TextFormField(
              controller: controller,
              style: const TextStyle(
                fontSize: 14,
                color: Colors.black,
              ),
              decoration: const InputDecoration(
                isDense: true,
                contentPadding: EdgeInsets.only(
                  left: 2,
                  right: 2,
                  bottom: 4,
                ),
                border: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFF555555),
                    width: 0.8,
                  ),
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFF555555),
                    width: 0.8,
                  ),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFF193F88),
                    width: 1.2,
                  ),
                ),
              ),
              validator: required
                  ? (value) {
                      if (value == null ||
                          value.trim().isEmpty) {
                        return 'Required';
                      }
                      return null;
                    }
                  : null,
            ),
          ),
        ],
      ),
    );
  }

  // ============================================================
  // TWO FIELDS IN ONE ROW
  // ============================================================

  Widget twoFields(
    String label1,
    TextEditingController controller1,
    String label2,
    TextEditingController controller2, {
    double labelWidth1 = 115,
    double labelWidth2 = 105,
  }) {
    return SizedBox(
      height: 32,
      child: Row(
        children: [
          Expanded(
            child: Row(
              children: [
                SizedBox(
                  width: labelWidth1,
                  child: Text(
                    label1,
                    maxLines: 1,
                    style: const TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ),
                Expanded(
                  child: TextFormField(
                    controller: controller1,
                    style: const TextStyle(
                      fontSize: 14,
                    ),
                    decoration: const InputDecoration(
                      isDense: true,
                      contentPadding: EdgeInsets.only(
                        bottom: 4,
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFF555555),
                          width: 0.8,
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFF193F88),
                          width: 1.2,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(width: 15),

          Expanded(
            child: Row(
              children: [
                SizedBox(
                  width: labelWidth2,
                  child: Text(
                    label2,
                    maxLines: 1,
                    style: const TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ),
                Expanded(
                  child: TextFormField(
                    controller: controller2,
                    style: const TextStyle(
                      fontSize: 14,
                    ),
                    decoration: const InputDecoration(
                      isDense: true,
                      contentPadding: EdgeInsets.only(
                        bottom: 4,
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFF555555),
                          width: 0.8,
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFF193F88),
                          width: 1.2,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // ============================================================
  // SECTION TITLE
  // ============================================================

  Widget sectionTitle(String title) {
    return Container(
      width: double.infinity,
      height: 34,
      margin: const EdgeInsets.only(
        top: 8,
        bottom: 7,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 14,
      ),
      alignment: Alignment.centerLeft,
      color: const Color(0xFF193F88),
      child: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  // ============================================================
  // EDUCATION ROW
  // ============================================================

  Widget educationRow(
    String label,
    TextEditingController schoolController,
    TextEditingController yearController,
  ) {
    return SizedBox(
      height: 34,
      child: Row(
        children: [
          SizedBox(
            width: 240,
            child: Padding(
              padding: const EdgeInsets.only(
                left: 40,
              ),
              child: Text(
                label,
                style: const TextStyle(
                  fontSize: 14,
                ),
              ),
            ),
          ),

          Expanded(
            child: TextFormField(
              controller: schoolController,
              style: const TextStyle(
                fontSize: 14,
              ),
              decoration: const InputDecoration(
                isDense: true,
                contentPadding: EdgeInsets.only(
                  bottom: 4,
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFF555555),
                    width: 0.8,
                  ),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFF193F88),
                    width: 1.2,
                  ),
                ),
              ),
            ),
          ),

          const SizedBox(width: 12),

          SizedBox(
            width: 155,
            child: TextFormField(
              controller: yearController,
              style: const TextStyle(
                fontSize: 14,
              ),
              decoration: const InputDecoration(
                isDense: true,
                contentPadding: EdgeInsets.only(
                  bottom: 4,
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFF555555),
                    width: 0.8,
                  ),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFF193F88),
                    width: 1.2,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // ============================================================
  // EMPLOYMENT ROW
  // ============================================================

  Widget employmentRow(
    TextEditingController company,
    TextEditingController position,
    TextEditingController from,
    TextEditingController to,
  ) {
    return SizedBox(
      height: 38,
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: employmentField(company),
          ),

          const SizedBox(width: 16),

          Expanded(
            flex: 3,
            child: employmentField(position),
          ),

          const SizedBox(width: 16),

          Expanded(
            flex: 1,
            child: employmentField(from),
          ),

          const SizedBox(width: 16),

          Expanded(
            flex: 1,
            child: employmentField(to),
          ),
        ],
      ),
    );
  }

  Widget employmentField(
    TextEditingController controller,
  ) {
    return TextFormField(
      controller: controller,
      style: const TextStyle(
        fontSize: 14,
      ),
      decoration: const InputDecoration(
        isDense: true,
        contentPadding: EdgeInsets.only(
          bottom: 5,
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xFF555555),
            width: 0.8,
          ),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xFF193F88),
            width: 1.2,
          ),
        ),
      ),
    );
  }

  // ============================================================
  // BUILD
  // ============================================================

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF2F4F8),

      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(
              vertical: 24,
              horizontal: 20,
            ),

            child: Container(
              constraints: const BoxConstraints(
                maxWidth: 1000,
              ),

              decoration: const BoxDecoration(
                color: Colors.white,
              ),

              child: Column(
                children: [
                  // ==================================================
                  // HEADER
                  // ==================================================

                  SizedBox(
                    width: double.infinity,
                    height: 96,
                    child: CustomPaint(
                      painter: BluePatternPainter(),

                      child: const Center(
                        child: Text(
                          'BIO-DATA',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),

                  // ==================================================
                  // MAIN FORM
                  // ==================================================

                  Padding(
                    padding: const EdgeInsets.fromLTRB(
                      42,
                      10,
                      42,
                      20,
                    ),

                    child: Form(
                      key: _formKey,

                      child: Column(
                        crossAxisAlignment:
                            CrossAxisAlignment.start,

                        children: [
                          // ==================================================
                          // PERSONAL INFORMATION + PHOTO
                          // ==================================================

                          Row(
                            crossAxisAlignment:
                                CrossAxisAlignment.start,

                            children: [
                              Expanded(
                                child: Column(
                                  children: [
                                    sectionTitle(
                                      'PERSONAL INFORMATION',
                                    ),

                                    field(
                                      'Position Desired:',
                                      positionDesiredController,
                                    ),

                                    field(
                                      'Fullname:',
                                      nameController,
                                    ),

                                    field(
                                      'Mobile Number:',
                                      mobileController,
                                    ),

                                    field(
                                      'Email Address:',
                                      emailController,
                                    ),

                                    field(
                                      'Home Address:',
                                      addressController,
                                    ),

                                    twoFields(
                                      'Nationality:',
                                      nationalityController,
                                      'Civil Status:',
                                      maritalController,
                                    ),

                                    twoFields(
                                      'Weight:',
                                      weightController,
                                      'Height:',
                                      heightController,
                                    ),

                                    twoFields(
                                      'Date of Birth:',
                                      dobController,
                                      'Place of Birth:',
                                      placeOfBirthController,
                                    ),

                                    twoFields(
                                      'Age:',
                                      ageController,
                                      'Gender:',
                                      genderController,
                                    ),

                                    twoFields(
                                      'Religion:',
                                      religionController,
                                      'Occupation:',
                                      occupationController,
                                    ),
                                  ],
                                ),
                              ),

                              const SizedBox(width: 15),

                              // ==================================================
                              // PHOTO
                              // ==================================================

                              Container(
                                width: 185,
                                height: 295,

                                margin: const EdgeInsets.only(
                                  top: 10,
                                ),

                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: const Color(
                                      0xFF303840,
                                    ),
                                    width: 1.5,
                                  ),
                                ),

                                child: const Center(
                                  child: Text(
                                    'PHOTO',
                                    style: TextStyle(
                                      fontSize: 25,
                                      fontWeight:
                                          FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),

                          // ==================================================
                          // FAMILY BACKGROUND
                          // ==================================================

                          sectionTitle(
                            'FAMILY BACKGROUND',
                          ),

                          twoFields(
                            "Spouse's Name:",
                            spouseNameController,
                            'Occupation:',
                            spouseOccupationController,
                            labelWidth1: 135,
                            labelWidth2: 105,
                          ),

                          twoFields(
                            'Name of Children:',
                            child1Controller,
                            'Day of Birth:',
                            child1BirthController,
                            labelWidth1: 150,
                            labelWidth2: 105,
                          ),

                          twoFields(
                            '',
                            child2Controller,
                            '',
                            child2BirthController,
                            labelWidth1: 150,
                            labelWidth2: 105,
                          ),

                          twoFields(
                            '',
                            child3Controller,
                            '',
                            child3BirthController,
                            labelWidth1: 150,
                            labelWidth2: 105,
                          ),

                          twoFields(
                            "Father's Name:",
                            fatherController,
                            'Occupation:',
                            fatherOccupationController,
                            labelWidth1: 135,
                            labelWidth2: 105,
                          ),

                          twoFields(
                            "Mother's Name:",
                            motherController,
                            'Occupation:',
                            motherOccupationController,
                            labelWidth1: 135,
                            labelWidth2: 105,
                          ),

                          field(
                            'Person to contact in case of emergency:',
                            emergencyPersonController,
                            labelWidth: 330,
                          ),

                          field(
                            'Contact Details:',
                            contactDetailsController,
                            labelWidth: 145,
                          ),

                          // ==================================================
                          // EDUCATIONAL BACKGROUND
                          // ==================================================

                          sectionTitle(
                            'EDUCATIONAL BACKGROUND',
                          ),

                          const Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 8,
                            ),

                            child: Row(
                              children: [
                                SizedBox(
                                  width: 240,
                                  child: Text(
                                    'EDUCATIONAL ATTAINMENT:',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight:
                                          FontWeight.bold,
                                    ),
                                  ),
                                ),

                                Expanded(
                                  child: Text(
                                    'SCHOOL / UNIVERSITY:',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight:
                                          FontWeight.bold,
                                    ),
                                  ),
                                ),

                                SizedBox(
                                  width: 165,
                                  child: Text(
                                    'YEAR GRADUATED:',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight:
                                          FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          const SizedBox(height: 5),

                          educationRow(
                            'ELEMENTARY SCHOOL:',
                            elementarySchoolController,
                            elementaryYearController,
                          ),

                          educationRow(
                            'SECONDARY SCHOOL:',
                            secondarySchoolController,
                            secondaryYearController,
                          ),

                          educationRow(
                            'VOCATIONAL SCHOOL:',
                            vocationalSchoolController,
                            vocationalYearController,
                          ),

                          educationRow(
                            'COLLEGE/UNIVERSITY:',
                            collegeSchoolController,
                            collegeYearController,
                          ),

                          const SizedBox(height: 3),

                          field(
                            'DEGREE/COURSE:',
                            degreeController,
                            labelWidth: 160,
                          ),

                          field(
                            'SKILLS:',
                            skillsController,
                            labelWidth: 80,
                          ),

                          // ==================================================
                          // EMPLOYMENT RECORD
                          // ==================================================

                          sectionTitle(
                            'EMPLOYMENT RECORD',
                          ),

                          const Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 8,
                            ),

                            child: Row(
                              children: [
                                Expanded(
                                  flex: 3,
                                  child: Center(
                                    child: Text(
                                      'COMPANY',
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight:
                                            FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),

                                Expanded(
                                  flex: 3,
                                  child: Center(
                                    child: Text(
                                      'POSITION',
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight:
                                            FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),

                                Expanded(
                                  flex: 1,
                                  child: Center(
                                    child: Text(
                                      'FROM',
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight:
                                            FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),

                                Expanded(
                                  flex: 1,
                                  child: Center(
                                    child: Text(
                                      'TO',
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight:
                                            FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          const SizedBox(height: 4),

                          employmentRow(
                            company1Controller,
                            position1Controller,
                            from1Controller,
                            to1Controller,
                          ),

                          employmentRow(
                            company2Controller,
                            position2Controller,
                            from2Controller,
                            to2Controller,
                          ),

                          employmentRow(
                            company3Controller,
                            position3Controller,
                            from3Controller,
                            to3Controller,
                          ),

                          // ==================================================
                          // CERTIFICATION
                          // ==================================================

                          const SizedBox(height: 15),

                          const Center(
                            child: Text(
                              'I hereby certify that the above information is true and correct.',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ),

                          const SizedBox(height: 35),

                          // ==================================================
                          // SIGNATURE
                          // ==================================================

                          Center(
                            child: SizedBox(
                              width: 360,

                              child: Column(
                                children: [
                                  Container(
                                    height: 1,
                                    color: Colors.black,
                                  ),

                                  const SizedBox(height: 7),

                                  const Text(
                                    'SIGNATURE OVER PRINTED NAME',
                                    style: TextStyle(
                                      fontSize: 13,
                                      fontStyle:
                                          FontStyle.italic,
                                      fontWeight:
                                          FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),

                          const SizedBox(height: 25),

                          // ==================================================
                          // PLACE AND DATE
                          // ==================================================

                          Row(
                            children: [
                              Expanded(
                                child: field(
                                  'Place:',
                                  placeController,
                                ),
                              ),

                              const SizedBox(width: 25),

                              Expanded(
                                child: field(
                                  'Date:',
                                  dateController,
                                ),
                              ),
                            ],
                          ),

                          const SizedBox(height: 25),

                          // ==================================================
                          // SAVE BUTTON
                          // ==================================================

                          Center(
                            child: SizedBox(
                              width: 250,
                              height: 45,

                              child: ElevatedButton(
                                onPressed: saveData,

                                style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0xFF193F88),
                                  foregroundColor: Colors.white,
                                  elevation: 0,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                ),

                                child: const Text(
                                  'Save Bio Data',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  // ==================================================
                  // FOOTER
                  // ==================================================

                  SizedBox(
                    width: double.infinity,
                    height: 25,
                    child: CustomPaint(
                      painter: BluePatternPainter(),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// ================================================================
// BLUE DIAGONAL PATTERN
// ================================================================

class BluePatternPainter extends CustomPainter {
  @override
  void paint(
    Canvas canvas,
    Size size,
  ) {
    final Paint basePaint = Paint()
      ..color = const Color(0xFF193F88)
      ..style = PaintingStyle.fill;

    canvas.drawRect(
      Rect.fromLTWH(
        0,
        0,
        size.width,
        size.height,
      ),
      basePaint,
    );

    final Paint stripePaint = Paint()
      ..color = const Color(0xFF214B92)
      ..style = PaintingStyle.fill;

    const double stripeWidth = 45;

    for (
      double x = -size.height;
      x < size.width;
      x += stripeWidth * 2
    ) {
      final Path path = Path();

      path.moveTo(x, 0);

      path.lineTo(
        x + stripeWidth,
        0,
      );

      path.lineTo(
        x + size.height + stripeWidth,
        size.height,
      );

      path.lineTo(
        x + size.height,
        size.height,
      );

      path.close();

      canvas.drawPath(
        path,
        stripePaint,
      );
    }
  }

  @override
  bool shouldRepaint(
    CustomPainter oldDelegate,
  ) {
    return false;
  }
}