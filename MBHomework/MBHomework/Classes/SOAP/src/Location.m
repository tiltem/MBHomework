//----------------------------------------------------
//
// Generated by www.easywsdl.com
// Version: 3.0.0.1
//
// Created by Quasar Development at 21-03-2014
//
//---------------------------------------------------


#import "ArrayOfString.h"
#import "MBObject.h"
#import "Helper.h"
#import "Location.h"


@implementation Location
    @synthesize BusinessID;
    @synthesize SiteID;
    @synthesize BusinessDescription;
    @synthesize AdditionalImageURLs;
    @synthesize FacilitySquareFeet;
    @synthesize TreatmentRooms;
    @synthesize ProSpaFinderSite;
    @synthesize HasClasses;
    @synthesize PhoneExtension;
    @synthesize Action;
    @synthesize ID;
    @synthesize Name;
    @synthesize Address;
    @synthesize Address2;
    @synthesize Tax1;
    @synthesize Tax2;
    @synthesize Tax3;
    @synthesize Tax4;
    @synthesize Tax5;
    @synthesize Phone;
    @synthesize City;
    @synthesize StateProvCode;
    @synthesize PostalCode;
    @synthesize Latitude;
    @synthesize Longitude;
    @synthesize DistanceInMiles;
    @synthesize ImageURL;
    @synthesize Description;
    @synthesize HasSite;
    @synthesize CanBook;

+ (Location *)createWithXml:(DDXMLElement *)__node __request:(RequestResultHandler*) __request
{
    if(__node == nil) { return nil; }
    return [[self alloc] initWithXml: __node __request:__request];
}

-(id)init {
    if ((self=[super init])) {
    }
    return self;
}

- (id) initWithXml: (DDXMLElement*) __node __request:(RequestResultHandler*) __request{
    if(self = [super initWithXml:__node __request:__request])
    {
        if([Helper hasValue:__node name:@"BusinessID"])
        {
            self.BusinessID = [[Helper getNode:__node name:@"BusinessID"] stringValue];
        }
        if([Helper hasValue:__node name:@"SiteID"])
        {
            self.SiteID = [[Helper getNode:__node name:@"SiteID"] stringValue];
        }
        if([Helper hasValue:__node name:@"BusinessDescription"])
        {
            self.BusinessDescription = [[Helper getNode:__node name:@"BusinessDescription"] stringValue];
        }
        if([Helper hasValue:__node name:@"AdditionalImageURLs"])
        {
            self.AdditionalImageURLs = (ArrayOfString*)[__request createObject:[Helper getNode:__node name:@"AdditionalImageURLs"] type:[ArrayOfString class]];
        }
        if([Helper hasValue:__node name:@"FacilitySquareFeet"])
        {
            self.FacilitySquareFeet = [[Helper getNode:__node name:@"FacilitySquareFeet"] stringValue];
        }
        if([Helper hasValue:__node name:@"TreatmentRooms"])
        {
            self.TreatmentRooms = [[Helper getNode:__node name:@"TreatmentRooms"] stringValue];
        }
        if([Helper hasValue:__node name:@"ProSpaFinderSite"])
        {
            self.ProSpaFinderSite = [[Helper getNode:__node name:@"ProSpaFinderSite"] stringValue];
        }
        if([Helper hasValue:__node name:@"HasClasses"])
        {
            self.HasClasses = [[Helper getNode:__node name:@"HasClasses"] stringValue];
        }
        if([Helper hasValue:__node name:@"PhoneExtension"])
        {
            self.PhoneExtension = [[Helper getNode:__node name:@"PhoneExtension"] stringValue];
        }
        if([Helper hasValue:__node name:@"Action"])
        {
            self.Action = [[Helper getNode:__node name:@"Action"] stringValue];
        }
        if([Helper hasValue:__node name:@"ID"])
        {
            self.ID = [[Helper getNode:__node name:@"ID"] stringValue];
        }
        if([Helper hasValue:__node name:@"Name"])
        {
            self.Name = [[Helper getNode:__node name:@"Name"] stringValue];
        }
        if([Helper hasValue:__node name:@"Address"])
        {
            self.Address = [[Helper getNode:__node name:@"Address"] stringValue];
        }
        if([Helper hasValue:__node name:@"Address2"])
        {
            self.Address2 = [[Helper getNode:__node name:@"Address2"] stringValue];
        }
        if([Helper hasValue:__node name:@"Tax1"])
        {
            self.Tax1 = [[Helper getNode:__node name:@"Tax1"] stringValue];
        }
        if([Helper hasValue:__node name:@"Tax2"])
        {
            self.Tax2 = [[Helper getNode:__node name:@"Tax2"] stringValue];
        }
        if([Helper hasValue:__node name:@"Tax3"])
        {
            self.Tax3 = [[Helper getNode:__node name:@"Tax3"] stringValue];
        }
        if([Helper hasValue:__node name:@"Tax4"])
        {
            self.Tax4 = [[Helper getNode:__node name:@"Tax4"] stringValue];
        }
        if([Helper hasValue:__node name:@"Tax5"])
        {
            self.Tax5 = [[Helper getNode:__node name:@"Tax5"] stringValue];
        }
        if([Helper hasValue:__node name:@"Phone"])
        {
            self.Phone = [[Helper getNode:__node name:@"Phone"] stringValue];
        }
        if([Helper hasValue:__node name:@"City"])
        {
            self.City = [[Helper getNode:__node name:@"City"] stringValue];
        }
        if([Helper hasValue:__node name:@"StateProvCode"])
        {
            self.StateProvCode = [[Helper getNode:__node name:@"StateProvCode"] stringValue];
        }
        if([Helper hasValue:__node name:@"PostalCode"])
        {
            self.PostalCode = [[Helper getNode:__node name:@"PostalCode"] stringValue];
        }
        if([Helper hasValue:__node name:@"Latitude"])
        {
            self.Latitude = [[Helper getNode:__node name:@"Latitude"] stringValue];
        }
        if([Helper hasValue:__node name:@"Longitude"])
        {
            self.Longitude = [[Helper getNode:__node name:@"Longitude"] stringValue];
        }
        if([Helper hasValue:__node name:@"DistanceInMiles"])
        {
            self.DistanceInMiles = [[Helper getNode:__node name:@"DistanceInMiles"] stringValue];
        }
        if([Helper hasValue:__node name:@"ImageURL"])
        {
            self.ImageURL = [[Helper getNode:__node name:@"ImageURL"] stringValue];
        }
        if([Helper hasValue:__node name:@"Description"])
        {
            self.Description = [[Helper getNode:__node name:@"Description"] stringValue];
        }
        if([Helper hasValue:__node name:@"HasSite"])
        {
            self.HasSite = [[Helper getNode:__node name:@"HasSite"] stringValue];
        }
        if([Helper hasValue:__node name:@"CanBook"])
        {
            self.CanBook = [[Helper getNode:__node name:@"CanBook"] stringValue];
        }
    }
    return self;
}

-(void) serialize:(DDXMLElement*)__parent __request:(RequestResultHandler*) __request
{
    [super serialize:__parent __request:__request];

             
        DDXMLElement* __BusinessIDItemElement=[__request writeElement:BusinessID type:[NSString class] name:@"BusinessID" URI:@"http://clients.mindbodyonline.com/api/0_5" parent:__parent skipNullProperty:__request.SkipNullProperties];
        if(__BusinessIDItemElement!=nil)
        {
            [__BusinessIDItemElement setStringValue:self.BusinessID];
        }
             
        DDXMLElement* __SiteIDItemElement=[__request writeElement:SiteID type:[NSString class] name:@"SiteID" URI:@"http://clients.mindbodyonline.com/api/0_5" parent:__parent skipNullProperty:__request.SkipNullProperties];
        if(__SiteIDItemElement!=nil)
        {
            [__SiteIDItemElement setStringValue:self.SiteID];
        }
             
        DDXMLElement* __BusinessDescriptionItemElement=[__request writeElement:BusinessDescription type:[NSString class] name:@"BusinessDescription" URI:@"http://clients.mindbodyonline.com/api/0_5" parent:__parent skipNullProperty:__request.SkipNullProperties];
        if(__BusinessDescriptionItemElement!=nil)
        {
            [__BusinessDescriptionItemElement setStringValue:self.BusinessDescription];
        }
             
        DDXMLElement* __AdditionalImageURLsItemElement=[__request writeElement:AdditionalImageURLs type:[ArrayOfString class] name:@"AdditionalImageURLs" URI:@"http://clients.mindbodyonline.com/api/0_5" parent:__parent skipNullProperty:__request.SkipNullProperties];
        if(__AdditionalImageURLsItemElement!=nil)
        {
            [self.AdditionalImageURLs serialize:__AdditionalImageURLsItemElement __request: __request];
        }
             
        DDXMLElement* __FacilitySquareFeetItemElement=[__request writeElement:FacilitySquareFeet type:[NSString class] name:@"FacilitySquareFeet" URI:@"http://clients.mindbodyonline.com/api/0_5" parent:__parent skipNullProperty:__request.SkipNullProperties];
        if(__FacilitySquareFeetItemElement!=nil)
        {
            [__FacilitySquareFeetItemElement setStringValue:self.FacilitySquareFeet];
        }
             
        DDXMLElement* __TreatmentRoomsItemElement=[__request writeElement:TreatmentRooms type:[NSString class] name:@"TreatmentRooms" URI:@"http://clients.mindbodyonline.com/api/0_5" parent:__parent skipNullProperty:__request.SkipNullProperties];
        if(__TreatmentRoomsItemElement!=nil)
        {
            [__TreatmentRoomsItemElement setStringValue:self.TreatmentRooms];
        }
             
        DDXMLElement* __ProSpaFinderSiteItemElement=[__request writeElement:ProSpaFinderSite type:[NSString class] name:@"ProSpaFinderSite" URI:@"http://clients.mindbodyonline.com/api/0_5" parent:__parent skipNullProperty:__request.SkipNullProperties];
        if(__ProSpaFinderSiteItemElement!=nil)
        {
            [__ProSpaFinderSiteItemElement setStringValue:self.ProSpaFinderSite];
        }
             
        DDXMLElement* __HasClassesItemElement=[__request writeElement:HasClasses type:[NSString class] name:@"HasClasses" URI:@"http://clients.mindbodyonline.com/api/0_5" parent:__parent skipNullProperty:__request.SkipNullProperties];
        if(__HasClassesItemElement!=nil)
        {
            [__HasClassesItemElement setStringValue:self.HasClasses];
        }
             
        DDXMLElement* __PhoneExtensionItemElement=[__request writeElement:PhoneExtension type:[NSString class] name:@"PhoneExtension" URI:@"http://clients.mindbodyonline.com/api/0_5" parent:__parent skipNullProperty:__request.SkipNullProperties];
        if(__PhoneExtensionItemElement!=nil)
        {
            [__PhoneExtensionItemElement setStringValue:self.PhoneExtension];
        }
             
        DDXMLElement* __ActionItemElement=[__request writeElement:Action type:[NSString class] name:@"Action" URI:@"http://clients.mindbodyonline.com/api/0_5" parent:__parent skipNullProperty:__request.SkipNullProperties];
        if(__ActionItemElement!=nil)
        {
            [__ActionItemElement setStringValue:self.Action];
        }
             
        DDXMLElement* __IDItemElement=[__request writeElement:ID type:[NSString class] name:@"ID" URI:@"http://clients.mindbodyonline.com/api/0_5" parent:__parent skipNullProperty:__request.SkipNullProperties];
        if(__IDItemElement!=nil)
        {
            [__IDItemElement setStringValue:self.ID];
        }
             
        DDXMLElement* __NameItemElement=[__request writeElement:Name type:[NSString class] name:@"Name" URI:@"http://clients.mindbodyonline.com/api/0_5" parent:__parent skipNullProperty:__request.SkipNullProperties];
        if(__NameItemElement!=nil)
        {
            [__NameItemElement setStringValue:self.Name];
        }
             
        DDXMLElement* __AddressItemElement=[__request writeElement:Address type:[NSString class] name:@"Address" URI:@"http://clients.mindbodyonline.com/api/0_5" parent:__parent skipNullProperty:__request.SkipNullProperties];
        if(__AddressItemElement!=nil)
        {
            [__AddressItemElement setStringValue:self.Address];
        }
             
        DDXMLElement* __Address2ItemElement=[__request writeElement:Address2 type:[NSString class] name:@"Address2" URI:@"http://clients.mindbodyonline.com/api/0_5" parent:__parent skipNullProperty:__request.SkipNullProperties];
        if(__Address2ItemElement!=nil)
        {
            [__Address2ItemElement setStringValue:self.Address2];
        }
             
        DDXMLElement* __Tax1ItemElement=[__request writeElement:Tax1 type:[NSString class] name:@"Tax1" URI:@"http://clients.mindbodyonline.com/api/0_5" parent:__parent skipNullProperty:__request.SkipNullProperties];
        if(__Tax1ItemElement!=nil)
        {
            [__Tax1ItemElement setStringValue:self.Tax1];
        }
             
        DDXMLElement* __Tax2ItemElement=[__request writeElement:Tax2 type:[NSString class] name:@"Tax2" URI:@"http://clients.mindbodyonline.com/api/0_5" parent:__parent skipNullProperty:__request.SkipNullProperties];
        if(__Tax2ItemElement!=nil)
        {
            [__Tax2ItemElement setStringValue:self.Tax2];
        }
             
        DDXMLElement* __Tax3ItemElement=[__request writeElement:Tax3 type:[NSString class] name:@"Tax3" URI:@"http://clients.mindbodyonline.com/api/0_5" parent:__parent skipNullProperty:__request.SkipNullProperties];
        if(__Tax3ItemElement!=nil)
        {
            [__Tax3ItemElement setStringValue:self.Tax3];
        }
             
        DDXMLElement* __Tax4ItemElement=[__request writeElement:Tax4 type:[NSString class] name:@"Tax4" URI:@"http://clients.mindbodyonline.com/api/0_5" parent:__parent skipNullProperty:__request.SkipNullProperties];
        if(__Tax4ItemElement!=nil)
        {
            [__Tax4ItemElement setStringValue:self.Tax4];
        }
             
        DDXMLElement* __Tax5ItemElement=[__request writeElement:Tax5 type:[NSString class] name:@"Tax5" URI:@"http://clients.mindbodyonline.com/api/0_5" parent:__parent skipNullProperty:__request.SkipNullProperties];
        if(__Tax5ItemElement!=nil)
        {
            [__Tax5ItemElement setStringValue:self.Tax5];
        }
             
        DDXMLElement* __PhoneItemElement=[__request writeElement:Phone type:[NSString class] name:@"Phone" URI:@"http://clients.mindbodyonline.com/api/0_5" parent:__parent skipNullProperty:__request.SkipNullProperties];
        if(__PhoneItemElement!=nil)
        {
            [__PhoneItemElement setStringValue:self.Phone];
        }
             
        DDXMLElement* __CityItemElement=[__request writeElement:City type:[NSString class] name:@"City" URI:@"http://clients.mindbodyonline.com/api/0_5" parent:__parent skipNullProperty:__request.SkipNullProperties];
        if(__CityItemElement!=nil)
        {
            [__CityItemElement setStringValue:self.City];
        }
             
        DDXMLElement* __StateProvCodeItemElement=[__request writeElement:StateProvCode type:[NSString class] name:@"StateProvCode" URI:@"http://clients.mindbodyonline.com/api/0_5" parent:__parent skipNullProperty:__request.SkipNullProperties];
        if(__StateProvCodeItemElement!=nil)
        {
            [__StateProvCodeItemElement setStringValue:self.StateProvCode];
        }
             
        DDXMLElement* __PostalCodeItemElement=[__request writeElement:PostalCode type:[NSString class] name:@"PostalCode" URI:@"http://clients.mindbodyonline.com/api/0_5" parent:__parent skipNullProperty:__request.SkipNullProperties];
        if(__PostalCodeItemElement!=nil)
        {
            [__PostalCodeItemElement setStringValue:self.PostalCode];
        }
             
        DDXMLElement* __LatitudeItemElement=[__request writeElement:Latitude type:[NSString class] name:@"Latitude" URI:@"http://clients.mindbodyonline.com/api/0_5" parent:__parent skipNullProperty:__request.SkipNullProperties];
        if(__LatitudeItemElement!=nil)
        {
            [__LatitudeItemElement setStringValue:self.Latitude];
        }
             
        DDXMLElement* __LongitudeItemElement=[__request writeElement:Longitude type:[NSString class] name:@"Longitude" URI:@"http://clients.mindbodyonline.com/api/0_5" parent:__parent skipNullProperty:__request.SkipNullProperties];
        if(__LongitudeItemElement!=nil)
        {
            [__LongitudeItemElement setStringValue:self.Longitude];
        }
             
        DDXMLElement* __DistanceInMilesItemElement=[__request writeElement:DistanceInMiles type:[NSString class] name:@"DistanceInMiles" URI:@"http://clients.mindbodyonline.com/api/0_5" parent:__parent skipNullProperty:__request.SkipNullProperties];
        if(__DistanceInMilesItemElement!=nil)
        {
            [__DistanceInMilesItemElement setStringValue:self.DistanceInMiles];
        }
             
        DDXMLElement* __ImageURLItemElement=[__request writeElement:ImageURL type:[NSString class] name:@"ImageURL" URI:@"http://clients.mindbodyonline.com/api/0_5" parent:__parent skipNullProperty:__request.SkipNullProperties];
        if(__ImageURLItemElement!=nil)
        {
            [__ImageURLItemElement setStringValue:self.ImageURL];
        }
             
        DDXMLElement* __DescriptionItemElement=[__request writeElement:Description type:[NSString class] name:@"Description" URI:@"http://clients.mindbodyonline.com/api/0_5" parent:__parent skipNullProperty:__request.SkipNullProperties];
        if(__DescriptionItemElement!=nil)
        {
            [__DescriptionItemElement setStringValue:self.Description];
        }
             
        DDXMLElement* __HasSiteItemElement=[__request writeElement:HasSite type:[NSString class] name:@"HasSite" URI:@"http://clients.mindbodyonline.com/api/0_5" parent:__parent skipNullProperty:__request.SkipNullProperties];
        if(__HasSiteItemElement!=nil)
        {
            [__HasSiteItemElement setStringValue:self.HasSite];
        }
             
        DDXMLElement* __CanBookItemElement=[__request writeElement:CanBook type:[NSString class] name:@"CanBook" URI:@"http://clients.mindbodyonline.com/api/0_5" parent:__parent skipNullProperty:__request.SkipNullProperties];
        if(__CanBookItemElement!=nil)
        {
            [__CanBookItemElement setStringValue:self.CanBook];
        }


}
@end