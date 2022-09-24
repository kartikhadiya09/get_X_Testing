class GetAccount {
  int? status;
  bool? success;
  Data? data;
  String? message;
  String? errorcode;

  GetAccount(
      {this.status, this.success, this.data, this.message, this.errorcode});

  GetAccount.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    success = json['success'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
    message = json['message'];
    errorcode = json['errorcode'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['success'] = this.success;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    data['message'] = this.message;
    data['errorcode'] = this.errorcode;
    return data;
  }
}

class Data {
  List<Accountmaster>? accountmaster;

  Data({this.accountmaster});

  Data.fromJson(Map<String, dynamic> json) {
    if (json['accountmaster'] != null) {
      accountmaster = <Accountmaster>[];
      json['accountmaster'].forEach((v) {
        accountmaster!.add(new Accountmaster.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.accountmaster != null) {
      data['accountmaster'] =
          this.accountmaster!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Accountmaster {
  double? rowId;
  String? accountId;
  String? accountName;
  double? ledgerGroupId;
  String? sysFlg;
  double? userId;
  double? yearId;
  double? compId;
  String? address1;
  String? address2;
  String? city1;
  String? city2;
  String? phone1;
  String? phone2;
  String? mobile;
  String? cST;
  String? gST;
  String? panNo;
  String? remarks;
  String? contactPerson;
  double? limitAmt;
  double? isPurchaseRate;
  String? accountOpenDate;
  double? executiveId;
  String? isSingleVATBill;
  String? accountState;
  String? vendorCode;
  double? referanceId;
  String? areaName;
  String? areaLandMark;
  double? lastYearSales;
  String? insertTime;
  String? updateTime;
  String? insertComputerName;
  String? updateComputerName;
  String? bankName;
  String? bankAcNo;
  String? branchName;
  String? iFSCCode;
  double? isFreeze;
  String? acVattype;
  String? email;
  String? pinCode;
  String? panHolderName;
  double? tdslimit;
  double? tdsperc;
  String? pricelistID;
  double? grandDisc;
  double? grandDisc2;
  double? dueDays;
  String? costcenter;
  String? aCCGroup;
  bool? billToBill;
  String? accountAlias;
  String? localName;
  String? localAddress;
  int? isSendSMS;
  int? isSendMail;
  double? freezeLimitAmt;
  double? overDueDays;
  String? gSTNo;
  String? registrationType;
  double? accountSGSTTAXPerc;
  double? accountCGSTTAXPerc;
  String? isTaxableAccount;
  double? isNotRounding;
  double? distance;



  Accountmaster(
      {this.rowId,
        this.accountId,
        this.accountName,
        this.ledgerGroupId,
        this.sysFlg,
        this.userId,
        this.yearId,
        this.compId,
        this.address1,
        this.address2,
        this.city1,
        this.city2,
        this.phone1,
        this.phone2,
        this.mobile,
        this.cST,
        this.gST,
        this.panNo,
        this.remarks,
        this.contactPerson,
        this.limitAmt,
        this.isPurchaseRate,
        this.accountOpenDate,
        this.executiveId,
        this.isSingleVATBill,
        this.accountState,
        this.vendorCode,
        this.referanceId,
        this.areaName,
        this.areaLandMark,
        this.lastYearSales,
        this.insertTime,
        this.updateTime,
        this.insertComputerName,
        this.updateComputerName,
        this.bankName,
        this.bankAcNo,
        this.branchName,
        this.iFSCCode,
        this.isFreeze,
        this.acVattype,
        this.email,
        this.pinCode,
        this.panHolderName,
        this.tdslimit,
        this.tdsperc,
        this.pricelistID,
        this.grandDisc,
        this.grandDisc2,
        this.dueDays,
        this.costcenter,
        this.aCCGroup,
        this.billToBill,
        this.accountAlias,
        this.localName,
        this.localAddress,
        this.isSendSMS,
        this.isSendMail,
        this.freezeLimitAmt,
        this.overDueDays,
        this.gSTNo,
        this.registrationType,
        this.accountSGSTTAXPerc,
        this.accountCGSTTAXPerc,
        this.isTaxableAccount,
        this.isNotRounding,
        this.distance});

  Accountmaster.fromJson(Map<String, dynamic> json) {
    rowId = json['RowId'];
    accountId = json['Account_Id'];
    accountName = json['Account_Name'];
    ledgerGroupId = json['Ledger_Group_Id'];
    sysFlg = json['SysFlg'];
    userId = json['User_Id'];
    yearId = json['Year_Id'];
    compId = json['Comp_Id'];
    address1 = json['Address1'];
    address2 = json['Address2'];
    city1 = json['City1'];
    city2 = json['City2'];
    phone1 = json['Phone1'];
    phone2 = json['Phone2'];
    mobile = json['Mobile'];
    cST = json['CST'];
    gST = json['GST'];
    panNo = json['Pan_No'];
    remarks = json['Remarks'];
    contactPerson = json['ContactPerson'];
    limitAmt = json['LimitAmt'];
    isPurchaseRate = json['IsPurchaseRate'];
    accountOpenDate = json['AccountOpenDate'];
    executiveId = json['Executive_Id'];
    isSingleVATBill = json['IsSingleVATBill'];
    accountState = json['AccountState'];
    vendorCode = json['VendorCode'];
    referanceId = json['Referance_Id'];
    areaName = json['AreaName'];
    areaLandMark = json['AreaLandMark'];
    lastYearSales = json['LastYearSales'];
    insertTime = json['InsertTime'];
    updateTime = json['UpdateTime'];
    insertComputerName = json['InsertComputerName'];
    updateComputerName = json['UpdateComputerName'];
    bankName = json['Bank_Name'];
    bankAcNo = json['BankAcNo'];
    branchName = json['Branch_Name'];
    iFSCCode = json['IFSCCode'];
    isFreeze = json['IsFreeze'];
    acVattype = json['AcVattype'];
    email = json['Email'];
    pinCode = json['PinCode'];
    panHolderName = json['PanHolderName'];
    tdslimit = json['tdslimit'];
    tdsperc = json['tdsperc'];
    pricelistID = json['PricelistID'];
    grandDisc = json['Grand_disc'];
    grandDisc2 = json['Grand_disc2'];
    dueDays = json['DueDays'];
    costcenter = json['costcenter'];
    aCCGroup = json['ACCGroup'];
    billToBill = json['BillToBill'];
    accountAlias = json['Account_Alias'];
    localName = json['Local_Name'];
    localAddress = json['Local_Address'];
    isSendSMS = json['IsSendSMS'];
    isSendMail = json['IsSendMail'];
    freezeLimitAmt = json['FreezeLimitAmt'];
    overDueDays = json['OverDueDays'];
    gSTNo = json['GST_No'];
    registrationType = json['RegistrationType'];
    accountSGSTTAXPerc = json['Account_SGSTTAXPerc'];
    accountCGSTTAXPerc = json['Account_CGSTTAXPerc'];
    isTaxableAccount = json['IsTaxableAccount'];
    isNotRounding = json['IsNotRounding'];
    distance = json['Distance'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['RowId'] = this.rowId;
    data['Account_Id'] = this.accountId;
    data['Account_Name'] = this.accountName;
    data['Ledger_Group_Id'] = this.ledgerGroupId;
    data['SysFlg'] = this.sysFlg;
    data['User_Id'] = this.userId;
    data['Year_Id'] = this.yearId;
    data['Comp_Id'] = this.compId;
    data['Address1'] = this.address1;
    data['Address2'] = this.address2;
    data['City1'] = this.city1;
    data['City2'] = this.city2;
    data['Phone1'] = this.phone1;
    data['Phone2'] = this.phone2;
    data['Mobile'] = this.mobile;
    data['CST'] = this.cST;
    data['GST'] = this.gST;
    data['Pan_No'] = this.panNo;
    data['Remarks'] = this.remarks;
    data['ContactPerson'] = this.contactPerson;
    data['LimitAmt'] = this.limitAmt;
    data['IsPurchaseRate'] = this.isPurchaseRate;
    data['AccountOpenDate'] = this.accountOpenDate;
    data['Executive_Id'] = this.executiveId;
    data['IsSingleVATBill'] = this.isSingleVATBill;
    data['AccountState'] = this.accountState;
    data['VendorCode'] = this.vendorCode;
    data['Referance_Id'] = this.referanceId;
    data['AreaName'] = this.areaName;
    data['AreaLandMark'] = this.areaLandMark;
    data['LastYearSales'] = this.lastYearSales;
    data['InsertTime'] = this.insertTime;
    data['UpdateTime'] = this.updateTime;
    data['InsertComputerName'] = this.insertComputerName;
    data['UpdateComputerName'] = this.updateComputerName;
    data['Bank_Name'] = this.bankName;
    data['BankAcNo'] = this.bankAcNo;
    data['Branch_Name'] = this.branchName;
    data['IFSCCode'] = this.iFSCCode;
    data['IsFreeze'] = this.isFreeze;
    data['AcVattype'] = this.acVattype;
    data['Email'] = this.email;
    data['PinCode'] = this.pinCode;
    data['PanHolderName'] = this.panHolderName;
    data['tdslimit'] = this.tdslimit;
    data['tdsperc'] = this.tdsperc;
    data['PricelistID'] = this.pricelistID;
    data['Grand_disc'] = this.grandDisc;
    data['Grand_disc2'] = this.grandDisc2;
    data['DueDays'] = this.dueDays;
    data['costcenter'] = this.costcenter;
    data['ACCGroup'] = this.aCCGroup;
    data['BillToBill'] = this.billToBill;
    data['Account_Alias'] = this.accountAlias;
    data['Local_Name'] = this.localName;
    data['Local_Address'] = this.localAddress;
    data['IsSendSMS'] = this.isSendSMS;
    data['IsSendMail'] = this.isSendMail;
    data['FreezeLimitAmt'] = this.freezeLimitAmt;
    data['OverDueDays'] = this.overDueDays;
    data['GST_No'] = this.gSTNo;
    data['RegistrationType'] = this.registrationType;
    data['Account_SGSTTAXPerc'] = this.accountSGSTTAXPerc;
    data['Account_CGSTTAXPerc'] = this.accountCGSTTAXPerc;
    data['IsTaxableAccount'] = this.isTaxableAccount;
    data['IsNotRounding'] = this.isNotRounding;
    data['Distance'] = this.distance;
    return data;
  }
}


