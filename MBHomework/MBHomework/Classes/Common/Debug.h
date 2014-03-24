/*
 *  Debug.h
 *  StJude
 *
 *  Created by Matt Whitehead on 14.03.11.
 *  Copyright 2011 Saritasa. All rights reserved.
 *
 */

#define DEBUG1

#ifdef DEBUG1
#   define DLog(fmt, ...) NSLog((@"%s [Line %d] " fmt), __PRETTY_FUNCTION__, __LINE__, ##__VA_ARGS__);
#   define CLog(fmt, ...) NSLog(fmt, ##__VA_ARGS__);
#else
#   define DLog(...)
#   define CLog(...)
#endif

// ALog always displays output regardless of the DEBUG setting
#define ALog(fmt, ...) NSLog((@"%s [Line %d] " fmt), __PRETTY_FUNCTION__, __LINE__, ##__VA_ARGS__);
