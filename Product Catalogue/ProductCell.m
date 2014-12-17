//
//  ProductCell.m
//  Product Catalogue
//
//  Created by Boris Bügling on 11/12/14.
//  Copyright (c) 2014 Boris Bügling. All rights reserved.
//

#import "ProductCell.h"
#import "UIView+Geometry.h"

@implementation ProductCell

@synthesize coverImageView = _coverImageView;
@synthesize pricingLabel = _pricingLabel;

-(UIImageView *)coverImageView {
    if (_coverImageView) {
        return _coverImageView;
    }

    _coverImageView = [[UIImageView alloc] initWithFrame:CGRectMake(0.0, 20.0, 200.0, 200.0)];
    _coverImageView.x = (self.width - _coverImageView.width) / 2;
    [self addSubview:_coverImageView];

    return _coverImageView;
}

-(instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    self.backgroundColor = [UIColor whiteColor];
    return self;
}

-(UILabel *)pricingLabel {
    if (_pricingLabel) {
        return _pricingLabel;
    }

    _pricingLabel = [[UILabel alloc] initWithFrame:CGRectMake(0.0, self.coverImageView.y, 50.0, 20.0)];
    _pricingLabel.backgroundColor = [UIColor yellowColor];
    _pricingLabel.x = self.width - _pricingLabel.width - 50.0;
    [self addSubview:_pricingLabel];

    return _pricingLabel;
}

@end
