class GetItem {
  int? status;
  bool? success;
  Data? data;
  String? message;
  String? errorcode;

  GetItem({this.status, this.success, this.data, this.message, this.errorcode});

  GetItem.fromJson(Map<String, dynamic> json) {
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
  Null? itemId;
  String? itemName;
  Null? itemDesc;
  double? itemGroupId;
  double? itemUnit;
  Null? openQty;
  double? rate;
  double? userId;
  double? yearId;
  double? compId;
  double? purchaseRate;
  double? salesRate;
  Null? tariffNO;
  double? reOrderLevel;
  Null? vehicleId;
  Null? iDMarks;
  String? isSerial;
  String? hSNNO;
  double? vATTAX;
  double? vATADDTAX;
  double? minimumSalesRate;
  String? barCode;
  double? meterQty;
  String? meterOperation;
  double? convertRation;
  double? defaultPurchaseDisc;
  double? defaultSalesDisc;
  Null? itemTag;
  String? insertTime;
  String? updateTime;
  String? insertComputerName;
  String? updateComputerName;
  Null? mrpflag;
  double? mrpflg;
  double? isSerialKeyCompulsary;
  double? isSerialKeyQtyCompulsary;
  double? isBatchItem;
  String? imageName;
  String? imagePath;
  double? inStock;
  double? isActive;
  String? itemType;
  String? rateCalUnit;
  double? expireInMonth;
  double? barcodeID;
  bool? isCompound;
  double? itemSubGroupId;
  String? itemAlias;
  double? stockinpcs;
  double? convertinqty;
  double? convertoutqty;
  double? mRPRate;
  Null? localName;
  double? commission;
  double? isClothInventory;
  Null? rackNo;
  double? isCubic;
  double? iGSTTAXPerc;
  double? uGSTTAXPerc;
  double? cessTAXPerc;
  double? marginPerc;
  double? defaultPackingQty;
  Null? gSTItemName;
  Null? gSTItemUnitName;
  Null? itemSKU;
  double? isTAXincludeINMargin;
  double? isSaleable;
  double? defaultPurchaseDisc2;
  double? defaultSalesDisc2;
  String? unitName;

  Accountmaster(
      {this.rowId,
        this.itemId,
        this.itemName,
        this.itemDesc,
        this.itemGroupId,
        this.itemUnit,
        this.openQty,
        this.rate,
        this.userId,
        this.yearId,
        this.compId,
        this.purchaseRate,
        this.salesRate,
        this.tariffNO,
        this.reOrderLevel,
        this.vehicleId,
        this.iDMarks,
        this.isSerial,
        this.hSNNO,
        this.vATTAX,
        this.vATADDTAX,
        this.minimumSalesRate,
        this.barCode,
        this.meterQty,
        this.meterOperation,
        this.convertRation,
        this.defaultPurchaseDisc,
        this.defaultSalesDisc,
        this.itemTag,
        this.insertTime,
        this.updateTime,
        this.insertComputerName,
        this.updateComputerName,
        this.mrpflag,
        this.mrpflg,
        this.isSerialKeyCompulsary,
        this.isSerialKeyQtyCompulsary,
        this.isBatchItem,
        this.imageName,
        this.imagePath,
        this.inStock,
        this.isActive,
        this.itemType,
        this.rateCalUnit,
        this.expireInMonth,
        this.barcodeID,
        this.isCompound,
        this.itemSubGroupId,
        this.itemAlias,
        this.stockinpcs,
        this.convertinqty,
        this.convertoutqty,
        this.mRPRate,
        this.localName,
        this.commission,
        this.isClothInventory,
        this.rackNo,
        this.isCubic,
        this.iGSTTAXPerc,
        this.uGSTTAXPerc,
        this.cessTAXPerc,
        this.marginPerc,
        this.defaultPackingQty,
        this.gSTItemName,
        this.gSTItemUnitName,
        this.itemSKU,
        this.isTAXincludeINMargin,
        this.isSaleable,
        this.defaultPurchaseDisc2,
        this.defaultSalesDisc2,
        this.unitName});

  Accountmaster.fromJson(Map<String, dynamic> json) {
    rowId = json['RowId'];
    itemId = json['Item_Id'];
    itemName = json['Item_Name'];
    itemDesc = json['Item_Desc'];
    itemGroupId = json['Item_Group_Id'];
    itemUnit = json['Item_Unit'];
    openQty = json['Open_Qty'];
    rate = json['Rate'];
    userId = json['User_Id'];
    yearId = json['Year_Id'];
    compId = json['Comp_Id'];
    purchaseRate = json['Purchase_Rate'];
    salesRate = json['Sales_Rate'];
    tariffNO = json['TariffNO'];
    reOrderLevel = json['ReOrderLevel'];
    vehicleId = json['Vehicle_Id'];
    iDMarks = json['IDMarks'];
    isSerial = json['IsSerial'];
    hSNNO = json['HSNNO'];
    vATTAX = json['VATTAX'];
    vATADDTAX = json['VATADDTAX'];
    minimumSalesRate = json['MinimumSalesRate'];
    barCode = json['BarCode'];
    meterQty = json['MeterQty'];
    meterOperation = json['MeterOperation'];
    convertRation = json['ConvertRation'];
    defaultPurchaseDisc = json['DefaultPurchaseDisc'];
    defaultSalesDisc = json['DefaultSalesDisc'];
    itemTag = json['Item_Tag'];
    insertTime = json['InsertTime'];
    updateTime = json['UpdateTime'];
    insertComputerName = json['InsertComputerName'];
    updateComputerName = json['UpdateComputerName'];
    mrpflag = json['Mrpflag'];
    mrpflg = json['Mrpflg'];
    isSerialKeyCompulsary = json['IsSerialKeyCompulsary'];
    isSerialKeyQtyCompulsary = json['IsSerialKeyQtyCompulsary'];
    isBatchItem = json['IsBatchItem'];
    imageName = json['Image_Name'];
    imagePath = json['Image_Path'];
    inStock = json['InStock'];
    isActive = json['IsActive'];
    itemType = json['Item_Type'];
    rateCalUnit = json['RateCalUnit'];
    expireInMonth = json['ExpireInMonth'];
    barcodeID = json['Barcode_ID'];
    isCompound = json['isCompound'];
    itemSubGroupId = json['Item_SubGroup_Id'];
    itemAlias = json['Item_Alias'];
    stockinpcs = json['stockinpcs'];
    convertinqty = json['convertinqty'];
    convertoutqty = json['convertoutqty'];
    mRPRate = json['MRP_Rate'];
    localName = json['Local_Name'];
    commission = json['commission'];
    isClothInventory = json['IsClothInventory'];
    rackNo = json['RackNo'];
    isCubic = json['IsCubic'];
    iGSTTAXPerc = json['IGSTTAXPerc'];
    uGSTTAXPerc = json['UGSTTAXPerc'];
    cessTAXPerc = json['CessTAXPerc'];
    marginPerc = json['MarginPerc'];
    defaultPackingQty = json['DefaultPackingQty'];
    gSTItemName = json['GST_Item_Name'];
    gSTItemUnitName = json['GST_itemUnitName'];
    itemSKU = json['Item_SKU'];
    isTAXincludeINMargin = json['IsTAXincludeINMargin'];
    isSaleable = json['IsSaleable'];
    defaultPurchaseDisc2 = json['DefaultPurchaseDisc2'];
    defaultSalesDisc2 = json['DefaultSalesDisc2'];
    unitName = json['Unit_Name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['RowId'] = this.rowId;
    data['Item_Id'] = this.itemId;
    data['Item_Name'] = this.itemName;
    data['Item_Desc'] = this.itemDesc;
    data['Item_Group_Id'] = this.itemGroupId;
    data['Item_Unit'] = this.itemUnit;
    data['Open_Qty'] = this.openQty;
    data['Rate'] = this.rate;
    data['User_Id'] = this.userId;
    data['Year_Id'] = this.yearId;
    data['Comp_Id'] = this.compId;
    data['Purchase_Rate'] = this.purchaseRate;
    data['Sales_Rate'] = this.salesRate;
    data['TariffNO'] = this.tariffNO;
    data['ReOrderLevel'] = this.reOrderLevel;
    data['Vehicle_Id'] = this.vehicleId;
    data['IDMarks'] = this.iDMarks;
    data['IsSerial'] = this.isSerial;
    data['HSNNO'] = this.hSNNO;
    data['VATTAX'] = this.vATTAX;
    data['VATADDTAX'] = this.vATADDTAX;
    data['MinimumSalesRate'] = this.minimumSalesRate;
    data['BarCode'] = this.barCode;
    data['MeterQty'] = this.meterQty;
    data['MeterOperation'] = this.meterOperation;
    data['ConvertRation'] = this.convertRation;
    data['DefaultPurchaseDisc'] = this.defaultPurchaseDisc;
    data['DefaultSalesDisc'] = this.defaultSalesDisc;
    data['Item_Tag'] = this.itemTag;
    data['InsertTime'] = this.insertTime;
    data['UpdateTime'] = this.updateTime;
    data['InsertComputerName'] = this.insertComputerName;
    data['UpdateComputerName'] = this.updateComputerName;
    data['Mrpflag'] = this.mrpflag;
    data['Mrpflg'] = this.mrpflg;
    data['IsSerialKeyCompulsary'] = this.isSerialKeyCompulsary;
    data['IsSerialKeyQtyCompulsary'] = this.isSerialKeyQtyCompulsary;
    data['IsBatchItem'] = this.isBatchItem;
    data['Image_Name'] = this.imageName;
    data['Image_Path'] = this.imagePath;
    data['InStock'] = this.inStock;
    data['IsActive'] = this.isActive;
    data['Item_Type'] = this.itemType;
    data['RateCalUnit'] = this.rateCalUnit;
    data['ExpireInMonth'] = this.expireInMonth;
    data['Barcode_ID'] = this.barcodeID;
    data['isCompound'] = this.isCompound;
    data['Item_SubGroup_Id'] = this.itemSubGroupId;
    data['Item_Alias'] = this.itemAlias;
    data['stockinpcs'] = this.stockinpcs;
    data['convertinqty'] = this.convertinqty;
    data['convertoutqty'] = this.convertoutqty;
    data['MRP_Rate'] = this.mRPRate;
    data['Local_Name'] = this.localName;
    data['commission'] = this.commission;
    data['IsClothInventory'] = this.isClothInventory;
    data['RackNo'] = this.rackNo;
    data['IsCubic'] = this.isCubic;
    data['IGSTTAXPerc'] = this.iGSTTAXPerc;
    data['UGSTTAXPerc'] = this.uGSTTAXPerc;
    data['CessTAXPerc'] = this.cessTAXPerc;
    data['MarginPerc'] = this.marginPerc;
    data['DefaultPackingQty'] = this.defaultPackingQty;
    data['GST_Item_Name'] = this.gSTItemName;
    data['GST_itemUnitName'] = this.gSTItemUnitName;
    data['Item_SKU'] = this.itemSKU;
    data['IsTAXincludeINMargin'] = this.isTAXincludeINMargin;
    data['IsSaleable'] = this.isSaleable;
    data['DefaultPurchaseDisc2'] = this.defaultPurchaseDisc2;
    data['DefaultSalesDisc2'] = this.defaultSalesDisc2;
    data['Unit_Name'] = this.unitName;
    return data;
  }
}
