@footway-width-z13: 3.5;
@footway-width-z15: 3.5;
@footway-width-z16: 3.5;
@footway-width-z18: 3.5;
@footway-width-z19: 3.5;

/*@footway-width-z13: 0.7;*/
/*@footway-width-z15: 1;*/
/*@footway-width-z16: 1.3;*/
/*@footway-width-z18: 1.3;*/
/*@footway-width-z19: 1.6;*/

/*
#ffffd4
#fee391
#fec44f
#fe9929
#d95f0e
#993404
*/

#roads-scale-mtb {
  [feature = 'highway_track'],[feature = 'highway_path'] {
    [zoom >= 13] {
      ::fill {
        line-width: @footway-width-z13;
        opacity: 0.8;
        line-offset: 2;
        [mtb_type = null],[sac_type >= 0] {
          [sac_type = 1] {
            line-color: #f7b71b;
          }
          [sac_type = 3] {
            line-color: #f75e10;
          }
          [sac_type = 5] {
            line-color: #b23013;
          }
          [sac_type = 6] {
            line-color: #742a1e;
          }
        }
        [mtb_type >= 0] {
          [mtb_type = 0] {
            line-color: #f8de7b;
          }
          [mtb_type = 1] {
            line-color: #f7b71b;
          }
          [mtb_type = 2] {
            line-color: #f7a815;
          }
          [mtb_type = 3] {
            line-color: #f75e10;
          }
          [mtb_type = 4] {
            line-color: #de3009;
          }
          [mtb_type = 5] {
            line-color: #b23013;
          }
          [mtb_type >= 6] {
            line-color: #742a1e;
          }
        }
      }
    }
  }
}
