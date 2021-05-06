module Tailwind.Utilities exposing
    ( globalStyles
    , absolute
    , align_baseline
    , align_bottom
    , align_middle
    , align_text_bottom
    , align_text_top
    , align_top
    , animate_bounce
    , animate_none
    , animate_ping
    , animate_pulse
    , animate_spin
    , antialiased
    , appearance_none
    , auto_cols_auto
    , auto_cols_fr
    , auto_cols_max
    , auto_cols_min
    , auto_rows_auto
    , auto_rows_fr
    , auto_rows_max
    , auto_rows_min
    , backdrop_blur
    , backdrop_blur_0
    , backdrop_blur_2xl
    , backdrop_blur_3xl
    , backdrop_blur_lg
    , backdrop_blur_md
    , backdrop_blur_sm
    , backdrop_blur_xl
    , backdrop_brightness_0
    , backdrop_brightness_100
    , backdrop_brightness_105
    , backdrop_brightness_110
    , backdrop_brightness_125
    , backdrop_brightness_150
    , backdrop_brightness_200
    , backdrop_brightness_50
    , backdrop_brightness_75
    , backdrop_brightness_90
    , backdrop_brightness_95
    , backdrop_contrast_0
    , backdrop_contrast_100
    , backdrop_contrast_125
    , backdrop_contrast_150
    , backdrop_contrast_200
    , backdrop_contrast_50
    , backdrop_contrast_75
    , backdrop_filter
    , backdrop_filter_none
    , backdrop_grayscale
    , backdrop_grayscale_0
    , backdrop_hue_rotate_0
    , backdrop_hue_rotate_15
    , backdrop_hue_rotate_180
    , backdrop_hue_rotate_30
    , backdrop_hue_rotate_60
    , backdrop_hue_rotate_90
    , backdrop_invert
    , backdrop_invert_0
    , backdrop_opacity_0
    , backdrop_opacity_10
    , backdrop_opacity_100
    , backdrop_opacity_20
    , backdrop_opacity_25
    , backdrop_opacity_30
    , backdrop_opacity_40
    , backdrop_opacity_5
    , backdrop_opacity_50
    , backdrop_opacity_60
    , backdrop_opacity_70
    , backdrop_opacity_75
    , backdrop_opacity_80
    , backdrop_opacity_90
    , backdrop_opacity_95
    , backdrop_saturate_0
    , backdrop_saturate_100
    , backdrop_saturate_150
    , backdrop_saturate_200
    , backdrop_saturate_50
    , backdrop_sepia
    , backdrop_sepia_0
    , bg_auto
    , bg_black
    , bg_blend_color
    , bg_blend_color_burn
    , bg_blend_color_dodge
    , bg_blend_darken
    , bg_blend_difference
    , bg_blend_exclusion
    , bg_blend_hard_light
    , bg_blend_hue
    , bg_blend_lighten
    , bg_blend_luminosity
    , bg_blend_multiply
    , bg_blend_normal
    , bg_blend_overlay
    , bg_blend_saturation
    , bg_blend_screen
    , bg_blend_soft_light
    , bg_blue_100
    , bg_blue_200
    , bg_blue_300
    , bg_blue_400
    , bg_blue_500
    , bg_blue_600
    , bg_blue_700
    , bg_blue_800
    , bg_blue_900
    , bg_bottom
    , bg_center
    , bg_clip_border
    , bg_clip_content
    , bg_clip_padding
    , bg_clip_text
    , bg_contain
    , bg_cover
    , bg_current
    , bg_fixed
    , bg_gradient_to_b
    , bg_gradient_to_bl
    , bg_gradient_to_br
    , bg_gradient_to_l
    , bg_gradient_to_r
    , bg_gradient_to_t
    , bg_gradient_to_tl
    , bg_gradient_to_tr
    , bg_gray_100
    , bg_gray_200
    , bg_gray_300
    , bg_gray_400
    , bg_gray_500
    , bg_gray_600
    , bg_gray_700
    , bg_gray_800
    , bg_gray_900
    , bg_green_100
    , bg_green_200
    , bg_green_300
    , bg_green_400
    , bg_green_500
    , bg_green_600
    , bg_green_700
    , bg_green_800
    , bg_green_900
    , bg_indigo_100
    , bg_indigo_200
    , bg_indigo_300
    , bg_indigo_400
    , bg_indigo_500
    , bg_indigo_600
    , bg_indigo_700
    , bg_indigo_800
    , bg_indigo_900
    , bg_left
    , bg_left_bottom
    , bg_left_top
    , bg_local
    , bg_no_repeat
    , bg_none
    , bg_opacity_0
    , bg_opacity_10
    , bg_opacity_100
    , bg_opacity_20
    , bg_opacity_25
    , bg_opacity_30
    , bg_opacity_40
    , bg_opacity_5
    , bg_opacity_50
    , bg_opacity_60
    , bg_opacity_70
    , bg_opacity_75
    , bg_opacity_80
    , bg_opacity_90
    , bg_opacity_95
    , bg_orange_100
    , bg_orange_200
    , bg_orange_300
    , bg_orange_400
    , bg_orange_500
    , bg_orange_600
    , bg_orange_700
    , bg_orange_800
    , bg_orange_900
    , bg_pink_100
    , bg_pink_200
    , bg_pink_300
    , bg_pink_400
    , bg_pink_500
    , bg_pink_600
    , bg_pink_700
    , bg_pink_800
    , bg_pink_900
    , bg_purple_100
    , bg_purple_200
    , bg_purple_300
    , bg_purple_400
    , bg_purple_500
    , bg_purple_600
    , bg_purple_700
    , bg_purple_800
    , bg_purple_900
    , bg_red_100
    , bg_red_200
    , bg_red_300
    , bg_red_400
    , bg_red_500
    , bg_red_600
    , bg_red_700
    , bg_red_800
    , bg_red_900
    , bg_repeat
    , bg_repeat_round
    , bg_repeat_space
    , bg_repeat_x
    , bg_repeat_y
    , bg_right
    , bg_right_bottom
    , bg_right_top
    , bg_scroll
    , bg_teal_100
    , bg_teal_200
    , bg_teal_300
    , bg_teal_400
    , bg_teal_500
    , bg_teal_600
    , bg_teal_700
    , bg_teal_800
    , bg_teal_900
    , bg_top
    , bg_transparent
    , bg_white
    , bg_yellow_100
    , bg_yellow_200
    , bg_yellow_300
    , bg_yellow_400
    , bg_yellow_500
    , bg_yellow_600
    , bg_yellow_700
    , bg_yellow_800
    , bg_yellow_900
    , block
    , blur
    , blur_0
    , blur_2xl
    , blur_3xl
    , blur_lg
    , blur_md
    , blur_sm
    , blur_xl
    , border
    , border_0
    , border_2
    , border_4
    , border_8
    , border_b
    , border_b_0
    , border_b_2
    , border_b_4
    , border_b_8
    , border_black
    , border_blue_100
    , border_blue_200
    , border_blue_300
    , border_blue_400
    , border_blue_500
    , border_blue_600
    , border_blue_700
    , border_blue_800
    , border_blue_900
    , border_collapse
    , border_current
    , border_dashed
    , border_dotted
    , border_double
    , border_gray_100
    , border_gray_200
    , border_gray_300
    , border_gray_400
    , border_gray_500
    , border_gray_600
    , border_gray_700
    , border_gray_800
    , border_gray_900
    , border_green_100
    , border_green_200
    , border_green_300
    , border_green_400
    , border_green_500
    , border_green_600
    , border_green_700
    , border_green_800
    , border_green_900
    , border_indigo_100
    , border_indigo_200
    , border_indigo_300
    , border_indigo_400
    , border_indigo_500
    , border_indigo_600
    , border_indigo_700
    , border_indigo_800
    , border_indigo_900
    , border_l
    , border_l_0
    , border_l_2
    , border_l_4
    , border_l_8
    , border_none
    , border_opacity_0
    , border_opacity_10
    , border_opacity_100
    , border_opacity_20
    , border_opacity_25
    , border_opacity_30
    , border_opacity_40
    , border_opacity_5
    , border_opacity_50
    , border_opacity_60
    , border_opacity_70
    , border_opacity_75
    , border_opacity_80
    , border_opacity_90
    , border_opacity_95
    , border_orange_100
    , border_orange_200
    , border_orange_300
    , border_orange_400
    , border_orange_500
    , border_orange_600
    , border_orange_700
    , border_orange_800
    , border_orange_900
    , border_pink_100
    , border_pink_200
    , border_pink_300
    , border_pink_400
    , border_pink_500
    , border_pink_600
    , border_pink_700
    , border_pink_800
    , border_pink_900
    , border_purple_100
    , border_purple_200
    , border_purple_300
    , border_purple_400
    , border_purple_500
    , border_purple_600
    , border_purple_700
    , border_purple_800
    , border_purple_900
    , border_r
    , border_r_0
    , border_r_2
    , border_r_4
    , border_r_8
    , border_red_100
    , border_red_200
    , border_red_300
    , border_red_400
    , border_red_500
    , border_red_600
    , border_red_700
    , border_red_800
    , border_red_900
    , border_separate
    , border_solid
    , border_t
    , border_t_0
    , border_t_2
    , border_t_4
    , border_t_8
    , border_teal_100
    , border_teal_200
    , border_teal_300
    , border_teal_400
    , border_teal_500
    , border_teal_600
    , border_teal_700
    , border_teal_800
    , border_teal_900
    , border_transparent
    , border_white
    , border_yellow_100
    , border_yellow_200
    , border_yellow_300
    , border_yellow_400
    , border_yellow_500
    , border_yellow_600
    , border_yellow_700
    , border_yellow_800
    , border_yellow_900
    , bottom_0
    , bottom_0_dot_5
    , bottom_1
    , bottom_10
    , bottom_11
    , bottom_12
    , bottom_14
    , bottom_16
    , bottom_1_dot_5
    , bottom_1over2
    , bottom_1over3
    , bottom_1over4
    , bottom_2
    , bottom_20
    , bottom_24
    , bottom_28
    , bottom_2_dot_5
    , bottom_2over3
    , bottom_2over4
    , bottom_3
    , bottom_32
    , bottom_36
    , bottom_3_dot_5
    , bottom_3over4
    , bottom_4
    , bottom_40
    , bottom_44
    , bottom_48
    , bottom_5
    , bottom_52
    , bottom_56
    , bottom_6
    , bottom_60
    , bottom_64
    , bottom_7
    , bottom_72
    , bottom_8
    , bottom_80
    , bottom_9
    , bottom_96
    , bottom_auto
    , bottom_full
    , bottom_px
    , box_border
    , box_content
    , break_all
    , break_normal
    , break_words
    , brightness_0
    , brightness_100
    , brightness_105
    , brightness_110
    , brightness_125
    , brightness_150
    , brightness_200
    , brightness_50
    , brightness_75
    , brightness_90
    , brightness_95
    , capitalize
    , clear_both
    , clear_left
    , clear_none
    , clear_right
    , col_auto
    , col_end_1
    , col_end_10
    , col_end_11
    , col_end_12
    , col_end_13
    , col_end_2
    , col_end_3
    , col_end_4
    , col_end_5
    , col_end_6
    , col_end_7
    , col_end_8
    , col_end_9
    , col_end_auto
    , col_span_1
    , col_span_10
    , col_span_11
    , col_span_12
    , col_span_2
    , col_span_3
    , col_span_4
    , col_span_5
    , col_span_6
    , col_span_7
    , col_span_8
    , col_span_9
    , col_span_full
    , col_start_1
    , col_start_10
    , col_start_11
    , col_start_12
    , col_start_13
    , col_start_2
    , col_start_3
    , col_start_4
    , col_start_5
    , col_start_6
    , col_start_7
    , col_start_8
    , col_start_9
    , col_start_auto
    , container
    , content_around
    , content_between
    , content_center
    , content_end
    , content_evenly
    , content_start
    , contents
    , contrast_0
    , contrast_100
    , contrast_125
    , contrast_150
    , contrast_200
    , contrast_50
    , contrast_75
    , cursor_auto
    , cursor_default
    , cursor_help
    , cursor_move
    , cursor_not_allowed
    , cursor_pointer
    , cursor_text
    , cursor_wait
    , decoration_clone
    , decoration_slice
    , delay_100
    , delay_1000
    , delay_150
    , delay_200
    , delay_300
    , delay_500
    , delay_700
    , delay_75
    , diagonal_fractions
    , divide_black
    , divide_blue_100
    , divide_blue_200
    , divide_blue_300
    , divide_blue_400
    , divide_blue_500
    , divide_blue_600
    , divide_blue_700
    , divide_blue_800
    , divide_blue_900
    , divide_current
    , divide_dashed
    , divide_dotted
    , divide_double
    , divide_gray_100
    , divide_gray_200
    , divide_gray_300
    , divide_gray_400
    , divide_gray_500
    , divide_gray_600
    , divide_gray_700
    , divide_gray_800
    , divide_gray_900
    , divide_green_100
    , divide_green_200
    , divide_green_300
    , divide_green_400
    , divide_green_500
    , divide_green_600
    , divide_green_700
    , divide_green_800
    , divide_green_900
    , divide_indigo_100
    , divide_indigo_200
    , divide_indigo_300
    , divide_indigo_400
    , divide_indigo_500
    , divide_indigo_600
    , divide_indigo_700
    , divide_indigo_800
    , divide_indigo_900
    , divide_none
    , divide_opacity_0
    , divide_opacity_10
    , divide_opacity_100
    , divide_opacity_20
    , divide_opacity_25
    , divide_opacity_30
    , divide_opacity_40
    , divide_opacity_5
    , divide_opacity_50
    , divide_opacity_60
    , divide_opacity_70
    , divide_opacity_75
    , divide_opacity_80
    , divide_opacity_90
    , divide_opacity_95
    , divide_orange_100
    , divide_orange_200
    , divide_orange_300
    , divide_orange_400
    , divide_orange_500
    , divide_orange_600
    , divide_orange_700
    , divide_orange_800
    , divide_orange_900
    , divide_pink_100
    , divide_pink_200
    , divide_pink_300
    , divide_pink_400
    , divide_pink_500
    , divide_pink_600
    , divide_pink_700
    , divide_pink_800
    , divide_pink_900
    , divide_purple_100
    , divide_purple_200
    , divide_purple_300
    , divide_purple_400
    , divide_purple_500
    , divide_purple_600
    , divide_purple_700
    , divide_purple_800
    , divide_purple_900
    , divide_red_100
    , divide_red_200
    , divide_red_300
    , divide_red_400
    , divide_red_500
    , divide_red_600
    , divide_red_700
    , divide_red_800
    , divide_red_900
    , divide_solid
    , divide_teal_100
    , divide_teal_200
    , divide_teal_300
    , divide_teal_400
    , divide_teal_500
    , divide_teal_600
    , divide_teal_700
    , divide_teal_800
    , divide_teal_900
    , divide_transparent
    , divide_white
    , divide_x
    , divide_x_0
    , divide_x_2
    , divide_x_4
    , divide_x_8
    , divide_x_reverse
    , divide_y
    , divide_y_0
    , divide_y_2
    , divide_y_4
    , divide_y_8
    , divide_y_reverse
    , divide_yellow_100
    , divide_yellow_200
    , divide_yellow_300
    , divide_yellow_400
    , divide_yellow_500
    , divide_yellow_600
    , divide_yellow_700
    , divide_yellow_800
    , divide_yellow_900
    , drop_shadow
    , drop_shadow_2xl
    , drop_shadow_lg
    , drop_shadow_md
    , drop_shadow_none
    , drop_shadow_sm
    , drop_shadow_xl
    , duration_100
    , duration_1000
    , duration_150
    , duration_200
    , duration_300
    , duration_500
    , duration_700
    , duration_75
    , ease_in
    , ease_in_out
    , ease_linear
    , ease_out
    , fill_current
    , filter
    , filter_none
    , fixed
    , flex
    , flex_1
    , flex_auto
    , flex_col
    , flex_col_reverse
    , flex_grow
    , flex_grow_0
    , flex_initial
    , flex_none
    , flex_nowrap
    , flex_row
    , flex_row_reverse
    , flex_shrink
    , flex_shrink_0
    , flex_wrap
    , flex_wrap_reverse
    , float_left
    , float_none
    , float_right
    , flow_root
    , font_black
    , font_bold
    , font_extrabold
    , font_extralight
    , font_light
    , font_medium
    , font_mono
    , font_normal
    , font_sans
    , font_semibold
    , font_serif
    , font_thin
    , font_title
    , from_black
    , from_blue_100
    , from_blue_200
    , from_blue_300
    , from_blue_400
    , from_blue_500
    , from_blue_600
    , from_blue_700
    , from_blue_800
    , from_blue_900
    , from_current
    , from_gray_100
    , from_gray_200
    , from_gray_300
    , from_gray_400
    , from_gray_500
    , from_gray_600
    , from_gray_700
    , from_gray_800
    , from_gray_900
    , from_green_100
    , from_green_200
    , from_green_300
    , from_green_400
    , from_green_500
    , from_green_600
    , from_green_700
    , from_green_800
    , from_green_900
    , from_indigo_100
    , from_indigo_200
    , from_indigo_300
    , from_indigo_400
    , from_indigo_500
    , from_indigo_600
    , from_indigo_700
    , from_indigo_800
    , from_indigo_900
    , from_orange_100
    , from_orange_200
    , from_orange_300
    , from_orange_400
    , from_orange_500
    , from_orange_600
    , from_orange_700
    , from_orange_800
    , from_orange_900
    , from_pink_100
    , from_pink_200
    , from_pink_300
    , from_pink_400
    , from_pink_500
    , from_pink_600
    , from_pink_700
    , from_pink_800
    , from_pink_900
    , from_purple_100
    , from_purple_200
    , from_purple_300
    , from_purple_400
    , from_purple_500
    , from_purple_600
    , from_purple_700
    , from_purple_800
    , from_purple_900
    , from_red_100
    , from_red_200
    , from_red_300
    , from_red_400
    , from_red_500
    , from_red_600
    , from_red_700
    , from_red_800
    , from_red_900
    , from_teal_100
    , from_teal_200
    , from_teal_300
    , from_teal_400
    , from_teal_500
    , from_teal_600
    , from_teal_700
    , from_teal_800
    , from_teal_900
    , from_transparent
    , from_white
    , from_yellow_100
    , from_yellow_200
    , from_yellow_300
    , from_yellow_400
    , from_yellow_500
    , from_yellow_600
    , from_yellow_700
    , from_yellow_800
    , from_yellow_900
    , gap_0
    , gap_0_dot_5
    , gap_1
    , gap_10
    , gap_11
    , gap_12
    , gap_14
    , gap_16
    , gap_1_dot_5
    , gap_2
    , gap_20
    , gap_24
    , gap_28
    , gap_2_dot_5
    , gap_3
    , gap_32
    , gap_36
    , gap_3_dot_5
    , gap_4
    , gap_40
    , gap_44
    , gap_48
    , gap_5
    , gap_52
    , gap_56
    , gap_6
    , gap_60
    , gap_64
    , gap_7
    , gap_72
    , gap_8
    , gap_80
    , gap_9
    , gap_96
    , gap_px
    , gap_x_0
    , gap_x_0_dot_5
    , gap_x_1
    , gap_x_10
    , gap_x_11
    , gap_x_12
    , gap_x_14
    , gap_x_16
    , gap_x_1_dot_5
    , gap_x_2
    , gap_x_20
    , gap_x_24
    , gap_x_28
    , gap_x_2_dot_5
    , gap_x_3
    , gap_x_32
    , gap_x_36
    , gap_x_3_dot_5
    , gap_x_4
    , gap_x_40
    , gap_x_44
    , gap_x_48
    , gap_x_5
    , gap_x_52
    , gap_x_56
    , gap_x_6
    , gap_x_60
    , gap_x_64
    , gap_x_7
    , gap_x_72
    , gap_x_8
    , gap_x_80
    , gap_x_9
    , gap_x_96
    , gap_x_px
    , gap_y_0
    , gap_y_0_dot_5
    , gap_y_1
    , gap_y_10
    , gap_y_11
    , gap_y_12
    , gap_y_14
    , gap_y_16
    , gap_y_1_dot_5
    , gap_y_2
    , gap_y_20
    , gap_y_24
    , gap_y_28
    , gap_y_2_dot_5
    , gap_y_3
    , gap_y_32
    , gap_y_36
    , gap_y_3_dot_5
    , gap_y_4
    , gap_y_40
    , gap_y_44
    , gap_y_48
    , gap_y_5
    , gap_y_52
    , gap_y_56
    , gap_y_6
    , gap_y_60
    , gap_y_64
    , gap_y_7
    , gap_y_72
    , gap_y_8
    , gap_y_80
    , gap_y_9
    , gap_y_96
    , gap_y_px
    , grayscale
    , grayscale_0
    , grid
    , grid_cols_1
    , grid_cols_10
    , grid_cols_11
    , grid_cols_12
    , grid_cols_2
    , grid_cols_3
    , grid_cols_4
    , grid_cols_5
    , grid_cols_6
    , grid_cols_7
    , grid_cols_8
    , grid_cols_9
    , grid_cols_none
    , grid_flow_col
    , grid_flow_col_dense
    , grid_flow_row
    , grid_flow_row_dense
    , grid_rows_1
    , grid_rows_2
    , grid_rows_3
    , grid_rows_4
    , grid_rows_5
    , grid_rows_6
    , grid_rows_none
    , h_0
    , h_0_dot_5
    , h_1
    , h_10
    , h_11
    , h_12
    , h_14
    , h_16
    , h_1_dot_5
    , h_1over2
    , h_1over3
    , h_1over4
    , h_1over5
    , h_1over6
    , h_2
    , h_20
    , h_24
    , h_28
    , h_2_dot_5
    , h_2over3
    , h_2over4
    , h_2over5
    , h_2over6
    , h_3
    , h_32
    , h_36
    , h_3_dot_5
    , h_3over4
    , h_3over5
    , h_3over6
    , h_4
    , h_40
    , h_44
    , h_48
    , h_4over5
    , h_4over6
    , h_5
    , h_52
    , h_56
    , h_5over6
    , h_6
    , h_60
    , h_64
    , h_7
    , h_72
    , h_8
    , h_80
    , h_9
    , h_96
    , h_auto
    , h_full
    , h_px
    , h_screen
    , hidden
    , hue_rotate_0
    , hue_rotate_15
    , hue_rotate_180
    , hue_rotate_30
    , hue_rotate_60
    , hue_rotate_90
    , inline
    , inline_block
    , inline_flex
    , inline_grid
    , inline_table
    , inset_0
    , inset_0_dot_5
    , inset_1
    , inset_10
    , inset_11
    , inset_12
    , inset_14
    , inset_16
    , inset_1_dot_5
    , inset_1over2
    , inset_1over3
    , inset_1over4
    , inset_2
    , inset_20
    , inset_24
    , inset_28
    , inset_2_dot_5
    , inset_2over3
    , inset_2over4
    , inset_3
    , inset_32
    , inset_36
    , inset_3_dot_5
    , inset_3over4
    , inset_4
    , inset_40
    , inset_44
    , inset_48
    , inset_5
    , inset_52
    , inset_56
    , inset_6
    , inset_60
    , inset_64
    , inset_7
    , inset_72
    , inset_8
    , inset_80
    , inset_9
    , inset_96
    , inset_auto
    , inset_full
    , inset_px
    , inset_x_0
    , inset_x_0_dot_5
    , inset_x_1
    , inset_x_10
    , inset_x_11
    , inset_x_12
    , inset_x_14
    , inset_x_16
    , inset_x_1_dot_5
    , inset_x_1over2
    , inset_x_1over3
    , inset_x_1over4
    , inset_x_2
    , inset_x_20
    , inset_x_24
    , inset_x_28
    , inset_x_2_dot_5
    , inset_x_2over3
    , inset_x_2over4
    , inset_x_3
    , inset_x_32
    , inset_x_36
    , inset_x_3_dot_5
    , inset_x_3over4
    , inset_x_4
    , inset_x_40
    , inset_x_44
    , inset_x_48
    , inset_x_5
    , inset_x_52
    , inset_x_56
    , inset_x_6
    , inset_x_60
    , inset_x_64
    , inset_x_7
    , inset_x_72
    , inset_x_8
    , inset_x_80
    , inset_x_9
    , inset_x_96
    , inset_x_auto
    , inset_x_full
    , inset_x_px
    , inset_y_0
    , inset_y_0_dot_5
    , inset_y_1
    , inset_y_10
    , inset_y_11
    , inset_y_12
    , inset_y_14
    , inset_y_16
    , inset_y_1_dot_5
    , inset_y_1over2
    , inset_y_1over3
    , inset_y_1over4
    , inset_y_2
    , inset_y_20
    , inset_y_24
    , inset_y_28
    , inset_y_2_dot_5
    , inset_y_2over3
    , inset_y_2over4
    , inset_y_3
    , inset_y_32
    , inset_y_36
    , inset_y_3_dot_5
    , inset_y_3over4
    , inset_y_4
    , inset_y_40
    , inset_y_44
    , inset_y_48
    , inset_y_5
    , inset_y_52
    , inset_y_56
    , inset_y_6
    , inset_y_60
    , inset_y_64
    , inset_y_7
    , inset_y_72
    , inset_y_8
    , inset_y_80
    , inset_y_9
    , inset_y_96
    , inset_y_auto
    , inset_y_full
    , inset_y_px
    , invert
    , invert_0
    , invisible
    , isolate
    , isolation_auto
    , italic
    , items_baseline
    , items_center
    , items_end
    , items_start
    , items_stretch
    , justify_around
    , justify_between
    , justify_center
    , justify_end
    , justify_evenly
    , justify_items_center
    , justify_items_end
    , justify_items_start
    , justify_items_stretch
    , justify_self_auto
    , justify_self_center
    , justify_self_end
    , justify_self_start
    , justify_self_stretch
    , justify_start
    , leading_10
    , leading_3
    , leading_4
    , leading_5
    , leading_6
    , leading_7
    , leading_8
    , leading_9
    , leading_loose
    , leading_none
    , leading_normal
    , leading_relaxed
    , leading_snug
    , leading_tight
    , left_0
    , left_0_dot_5
    , left_1
    , left_10
    , left_11
    , left_12
    , left_14
    , left_16
    , left_1_dot_5
    , left_1over2
    , left_1over3
    , left_1over4
    , left_2
    , left_20
    , left_24
    , left_28
    , left_2_dot_5
    , left_2over3
    , left_2over4
    , left_3
    , left_32
    , left_36
    , left_3_dot_5
    , left_3over4
    , left_4
    , left_40
    , left_44
    , left_48
    , left_5
    , left_52
    , left_56
    , left_6
    , left_60
    , left_64
    , left_7
    , left_72
    , left_8
    , left_80
    , left_9
    , left_96
    , left_auto
    , left_full
    , left_px
    , line_through
    , lining_nums
    , list_decimal
    , list_disc
    , list_inside
    , list_item
    , list_none
    , list_outside
    , lowercase
    , m_0
    , m_0_dot_5
    , m_1
    , m_10
    , m_11
    , m_12
    , m_14
    , m_16
    , m_1_dot_5
    , m_2
    , m_20
    , m_24
    , m_28
    , m_2_dot_5
    , m_3
    , m_32
    , m_36
    , m_3_dot_5
    , m_4
    , m_40
    , m_44
    , m_48
    , m_5
    , m_52
    , m_56
    , m_6
    , m_60
    , m_64
    , m_7
    , m_72
    , m_8
    , m_80
    , m_9
    , m_96
    , m_auto
    , m_px
    , max_h_0
    , max_h_0_dot_5
    , max_h_1
    , max_h_10
    , max_h_11
    , max_h_12
    , max_h_14
    , max_h_16
    , max_h_1_dot_5
    , max_h_2
    , max_h_20
    , max_h_24
    , max_h_28
    , max_h_2_dot_5
    , max_h_3
    , max_h_32
    , max_h_36
    , max_h_3_dot_5
    , max_h_4
    , max_h_40
    , max_h_44
    , max_h_48
    , max_h_5
    , max_h_52
    , max_h_56
    , max_h_6
    , max_h_60
    , max_h_64
    , max_h_7
    , max_h_72
    , max_h_8
    , max_h_80
    , max_h_9
    , max_h_96
    , max_h_full
    , max_h_px
    , max_h_screen
    , max_w_0
    , max_w_2xl
    , max_w_3xl
    , max_w_4xl
    , max_w_5xl
    , max_w_6xl
    , max_w_7xl
    , max_w_full
    , max_w_lg
    , max_w_max
    , max_w_md
    , max_w_min
    , max_w_none
    , max_w_prose
    , max_w_screen_2xl
    , max_w_screen_lg
    , max_w_screen_md
    , max_w_screen_sm
    , max_w_screen_xl
    , max_w_sm
    , max_w_xl
    , max_w_xs
    , mb_0
    , mb_0_dot_5
    , mb_1
    , mb_10
    , mb_11
    , mb_12
    , mb_14
    , mb_16
    , mb_1_dot_5
    , mb_2
    , mb_20
    , mb_24
    , mb_28
    , mb_2_dot_5
    , mb_3
    , mb_32
    , mb_36
    , mb_3_dot_5
    , mb_4
    , mb_40
    , mb_44
    , mb_48
    , mb_5
    , mb_52
    , mb_56
    , mb_6
    , mb_60
    , mb_64
    , mb_7
    , mb_72
    , mb_8
    , mb_80
    , mb_9
    , mb_96
    , mb_auto
    , mb_px
    , min_h_0
    , min_h_full
    , min_h_screen
    , min_w_0
    , min_w_full
    , min_w_max
    , min_w_min
    , mix_blend_color
    , mix_blend_color_burn
    , mix_blend_color_dodge
    , mix_blend_darken
    , mix_blend_difference
    , mix_blend_exclusion
    , mix_blend_hard_light
    , mix_blend_hue
    , mix_blend_lighten
    , mix_blend_luminosity
    , mix_blend_multiply
    , mix_blend_normal
    , mix_blend_overlay
    , mix_blend_saturation
    , mix_blend_screen
    , mix_blend_soft_light
    , ml_0
    , ml_0_dot_5
    , ml_1
    , ml_10
    , ml_11
    , ml_12
    , ml_14
    , ml_16
    , ml_1_dot_5
    , ml_2
    , ml_20
    , ml_24
    , ml_28
    , ml_2_dot_5
    , ml_3
    , ml_32
    , ml_36
    , ml_3_dot_5
    , ml_4
    , ml_40
    , ml_44
    , ml_48
    , ml_5
    , ml_52
    , ml_56
    , ml_6
    , ml_60
    , ml_64
    , ml_7
    , ml_72
    , ml_8
    , ml_80
    , ml_9
    , ml_96
    , ml_auto
    , ml_px
    , mr_0
    , mr_0_dot_5
    , mr_1
    , mr_10
    , mr_11
    , mr_12
    , mr_14
    , mr_16
    , mr_1_dot_5
    , mr_2
    , mr_20
    , mr_24
    , mr_28
    , mr_2_dot_5
    , mr_3
    , mr_32
    , mr_36
    , mr_3_dot_5
    , mr_4
    , mr_40
    , mr_44
    , mr_48
    , mr_5
    , mr_52
    , mr_56
    , mr_6
    , mr_60
    , mr_64
    , mr_7
    , mr_72
    , mr_8
    , mr_80
    , mr_9
    , mr_96
    , mr_auto
    , mr_px
    , mt_0
    , mt_0_dot_5
    , mt_1
    , mt_10
    , mt_11
    , mt_12
    , mt_14
    , mt_16
    , mt_1_dot_5
    , mt_2
    , mt_20
    , mt_24
    , mt_28
    , mt_2_dot_5
    , mt_3
    , mt_32
    , mt_36
    , mt_3_dot_5
    , mt_4
    , mt_40
    , mt_44
    , mt_48
    , mt_5
    , mt_52
    , mt_56
    , mt_6
    , mt_60
    , mt_64
    , mt_7
    , mt_72
    , mt_8
    , mt_80
    , mt_9
    , mt_96
    , mt_auto
    , mt_px
    , mx_0
    , mx_0_dot_5
    , mx_1
    , mx_10
    , mx_11
    , mx_12
    , mx_14
    , mx_16
    , mx_1_dot_5
    , mx_2
    , mx_20
    , mx_24
    , mx_28
    , mx_2_dot_5
    , mx_3
    , mx_32
    , mx_36
    , mx_3_dot_5
    , mx_4
    , mx_40
    , mx_44
    , mx_48
    , mx_5
    , mx_52
    , mx_56
    , mx_6
    , mx_60
    , mx_64
    , mx_7
    , mx_72
    , mx_8
    , mx_80
    , mx_9
    , mx_96
    , mx_auto
    , mx_px
    , my_0
    , my_0_dot_5
    , my_1
    , my_10
    , my_11
    , my_12
    , my_14
    , my_16
    , my_1_dot_5
    , my_2
    , my_20
    , my_24
    , my_28
    , my_2_dot_5
    , my_3
    , my_32
    , my_36
    , my_3_dot_5
    , my_4
    , my_40
    , my_44
    , my_48
    , my_5
    , my_52
    , my_56
    , my_6
    , my_60
    , my_64
    , my_7
    , my_72
    , my_8
    , my_80
    , my_9
    , my_96
    , my_auto
    , my_px
    , neg_backdrop_hue_rotate_15
    , neg_backdrop_hue_rotate_180
    , neg_backdrop_hue_rotate_30
    , neg_backdrop_hue_rotate_60
    , neg_backdrop_hue_rotate_90
    , neg_bottom_0
    , neg_bottom_0_dot_5
    , neg_bottom_1
    , neg_bottom_10
    , neg_bottom_11
    , neg_bottom_12
    , neg_bottom_14
    , neg_bottom_16
    , neg_bottom_1_dot_5
    , neg_bottom_1over2
    , neg_bottom_1over3
    , neg_bottom_1over4
    , neg_bottom_2
    , neg_bottom_20
    , neg_bottom_24
    , neg_bottom_28
    , neg_bottom_2_dot_5
    , neg_bottom_2over3
    , neg_bottom_2over4
    , neg_bottom_3
    , neg_bottom_32
    , neg_bottom_36
    , neg_bottom_3_dot_5
    , neg_bottom_3over4
    , neg_bottom_4
    , neg_bottom_40
    , neg_bottom_44
    , neg_bottom_48
    , neg_bottom_5
    , neg_bottom_52
    , neg_bottom_56
    , neg_bottom_6
    , neg_bottom_60
    , neg_bottom_64
    , neg_bottom_7
    , neg_bottom_72
    , neg_bottom_8
    , neg_bottom_80
    , neg_bottom_9
    , neg_bottom_96
    , neg_bottom_full
    , neg_bottom_px
    , neg_hue_rotate_15
    , neg_hue_rotate_180
    , neg_hue_rotate_30
    , neg_hue_rotate_60
    , neg_hue_rotate_90
    , neg_inset_0
    , neg_inset_0_dot_5
    , neg_inset_1
    , neg_inset_10
    , neg_inset_11
    , neg_inset_12
    , neg_inset_14
    , neg_inset_16
    , neg_inset_1_dot_5
    , neg_inset_1over2
    , neg_inset_1over3
    , neg_inset_1over4
    , neg_inset_2
    , neg_inset_20
    , neg_inset_24
    , neg_inset_28
    , neg_inset_2_dot_5
    , neg_inset_2over3
    , neg_inset_2over4
    , neg_inset_3
    , neg_inset_32
    , neg_inset_36
    , neg_inset_3_dot_5
    , neg_inset_3over4
    , neg_inset_4
    , neg_inset_40
    , neg_inset_44
    , neg_inset_48
    , neg_inset_5
    , neg_inset_52
    , neg_inset_56
    , neg_inset_6
    , neg_inset_60
    , neg_inset_64
    , neg_inset_7
    , neg_inset_72
    , neg_inset_8
    , neg_inset_80
    , neg_inset_9
    , neg_inset_96
    , neg_inset_full
    , neg_inset_px
    , neg_inset_x_0
    , neg_inset_x_0_dot_5
    , neg_inset_x_1
    , neg_inset_x_10
    , neg_inset_x_11
    , neg_inset_x_12
    , neg_inset_x_14
    , neg_inset_x_16
    , neg_inset_x_1_dot_5
    , neg_inset_x_1over2
    , neg_inset_x_1over3
    , neg_inset_x_1over4
    , neg_inset_x_2
    , neg_inset_x_20
    , neg_inset_x_24
    , neg_inset_x_28
    , neg_inset_x_2_dot_5
    , neg_inset_x_2over3
    , neg_inset_x_2over4
    , neg_inset_x_3
    , neg_inset_x_32
    , neg_inset_x_36
    , neg_inset_x_3_dot_5
    , neg_inset_x_3over4
    , neg_inset_x_4
    , neg_inset_x_40
    , neg_inset_x_44
    , neg_inset_x_48
    , neg_inset_x_5
    , neg_inset_x_52
    , neg_inset_x_56
    , neg_inset_x_6
    , neg_inset_x_60
    , neg_inset_x_64
    , neg_inset_x_7
    , neg_inset_x_72
    , neg_inset_x_8
    , neg_inset_x_80
    , neg_inset_x_9
    , neg_inset_x_96
    , neg_inset_x_full
    , neg_inset_x_px
    , neg_inset_y_0
    , neg_inset_y_0_dot_5
    , neg_inset_y_1
    , neg_inset_y_10
    , neg_inset_y_11
    , neg_inset_y_12
    , neg_inset_y_14
    , neg_inset_y_16
    , neg_inset_y_1_dot_5
    , neg_inset_y_1over2
    , neg_inset_y_1over3
    , neg_inset_y_1over4
    , neg_inset_y_2
    , neg_inset_y_20
    , neg_inset_y_24
    , neg_inset_y_28
    , neg_inset_y_2_dot_5
    , neg_inset_y_2over3
    , neg_inset_y_2over4
    , neg_inset_y_3
    , neg_inset_y_32
    , neg_inset_y_36
    , neg_inset_y_3_dot_5
    , neg_inset_y_3over4
    , neg_inset_y_4
    , neg_inset_y_40
    , neg_inset_y_44
    , neg_inset_y_48
    , neg_inset_y_5
    , neg_inset_y_52
    , neg_inset_y_56
    , neg_inset_y_6
    , neg_inset_y_60
    , neg_inset_y_64
    , neg_inset_y_7
    , neg_inset_y_72
    , neg_inset_y_8
    , neg_inset_y_80
    , neg_inset_y_9
    , neg_inset_y_96
    , neg_inset_y_full
    , neg_inset_y_px
    , neg_left_0
    , neg_left_0_dot_5
    , neg_left_1
    , neg_left_10
    , neg_left_11
    , neg_left_12
    , neg_left_14
    , neg_left_16
    , neg_left_1_dot_5
    , neg_left_1over2
    , neg_left_1over3
    , neg_left_1over4
    , neg_left_2
    , neg_left_20
    , neg_left_24
    , neg_left_28
    , neg_left_2_dot_5
    , neg_left_2over3
    , neg_left_2over4
    , neg_left_3
    , neg_left_32
    , neg_left_36
    , neg_left_3_dot_5
    , neg_left_3over4
    , neg_left_4
    , neg_left_40
    , neg_left_44
    , neg_left_48
    , neg_left_5
    , neg_left_52
    , neg_left_56
    , neg_left_6
    , neg_left_60
    , neg_left_64
    , neg_left_7
    , neg_left_72
    , neg_left_8
    , neg_left_80
    , neg_left_9
    , neg_left_96
    , neg_left_full
    , neg_left_px
    , neg_m_0
    , neg_m_0_dot_5
    , neg_m_1
    , neg_m_10
    , neg_m_11
    , neg_m_12
    , neg_m_14
    , neg_m_16
    , neg_m_1_dot_5
    , neg_m_2
    , neg_m_20
    , neg_m_24
    , neg_m_28
    , neg_m_2_dot_5
    , neg_m_3
    , neg_m_32
    , neg_m_36
    , neg_m_3_dot_5
    , neg_m_4
    , neg_m_40
    , neg_m_44
    , neg_m_48
    , neg_m_5
    , neg_m_52
    , neg_m_56
    , neg_m_6
    , neg_m_60
    , neg_m_64
    , neg_m_7
    , neg_m_72
    , neg_m_8
    , neg_m_80
    , neg_m_9
    , neg_m_96
    , neg_m_px
    , neg_mb_0
    , neg_mb_0_dot_5
    , neg_mb_1
    , neg_mb_10
    , neg_mb_11
    , neg_mb_12
    , neg_mb_14
    , neg_mb_16
    , neg_mb_1_dot_5
    , neg_mb_2
    , neg_mb_20
    , neg_mb_24
    , neg_mb_28
    , neg_mb_2_dot_5
    , neg_mb_3
    , neg_mb_32
    , neg_mb_36
    , neg_mb_3_dot_5
    , neg_mb_4
    , neg_mb_40
    , neg_mb_44
    , neg_mb_48
    , neg_mb_5
    , neg_mb_52
    , neg_mb_56
    , neg_mb_6
    , neg_mb_60
    , neg_mb_64
    , neg_mb_7
    , neg_mb_72
    , neg_mb_8
    , neg_mb_80
    , neg_mb_9
    , neg_mb_96
    , neg_mb_px
    , neg_ml_0
    , neg_ml_0_dot_5
    , neg_ml_1
    , neg_ml_10
    , neg_ml_11
    , neg_ml_12
    , neg_ml_14
    , neg_ml_16
    , neg_ml_1_dot_5
    , neg_ml_2
    , neg_ml_20
    , neg_ml_24
    , neg_ml_28
    , neg_ml_2_dot_5
    , neg_ml_3
    , neg_ml_32
    , neg_ml_36
    , neg_ml_3_dot_5
    , neg_ml_4
    , neg_ml_40
    , neg_ml_44
    , neg_ml_48
    , neg_ml_5
    , neg_ml_52
    , neg_ml_56
    , neg_ml_6
    , neg_ml_60
    , neg_ml_64
    , neg_ml_7
    , neg_ml_72
    , neg_ml_8
    , neg_ml_80
    , neg_ml_9
    , neg_ml_96
    , neg_ml_px
    , neg_mr_0
    , neg_mr_0_dot_5
    , neg_mr_1
    , neg_mr_10
    , neg_mr_11
    , neg_mr_12
    , neg_mr_14
    , neg_mr_16
    , neg_mr_1_dot_5
    , neg_mr_2
    , neg_mr_20
    , neg_mr_24
    , neg_mr_28
    , neg_mr_2_dot_5
    , neg_mr_3
    , neg_mr_32
    , neg_mr_36
    , neg_mr_3_dot_5
    , neg_mr_4
    , neg_mr_40
    , neg_mr_44
    , neg_mr_48
    , neg_mr_5
    , neg_mr_52
    , neg_mr_56
    , neg_mr_6
    , neg_mr_60
    , neg_mr_64
    , neg_mr_7
    , neg_mr_72
    , neg_mr_8
    , neg_mr_80
    , neg_mr_9
    , neg_mr_96
    , neg_mr_px
    , neg_mt_0
    , neg_mt_0_dot_5
    , neg_mt_1
    , neg_mt_10
    , neg_mt_11
    , neg_mt_12
    , neg_mt_14
    , neg_mt_16
    , neg_mt_1_dot_5
    , neg_mt_2
    , neg_mt_20
    , neg_mt_24
    , neg_mt_28
    , neg_mt_2_dot_5
    , neg_mt_3
    , neg_mt_32
    , neg_mt_36
    , neg_mt_3_dot_5
    , neg_mt_4
    , neg_mt_40
    , neg_mt_44
    , neg_mt_48
    , neg_mt_5
    , neg_mt_52
    , neg_mt_56
    , neg_mt_6
    , neg_mt_60
    , neg_mt_64
    , neg_mt_7
    , neg_mt_72
    , neg_mt_8
    , neg_mt_80
    , neg_mt_9
    , neg_mt_96
    , neg_mt_px
    , neg_mx_0
    , neg_mx_0_dot_5
    , neg_mx_1
    , neg_mx_10
    , neg_mx_11
    , neg_mx_12
    , neg_mx_14
    , neg_mx_16
    , neg_mx_1_dot_5
    , neg_mx_2
    , neg_mx_20
    , neg_mx_24
    , neg_mx_28
    , neg_mx_2_dot_5
    , neg_mx_3
    , neg_mx_32
    , neg_mx_36
    , neg_mx_3_dot_5
    , neg_mx_4
    , neg_mx_40
    , neg_mx_44
    , neg_mx_48
    , neg_mx_5
    , neg_mx_52
    , neg_mx_56
    , neg_mx_6
    , neg_mx_60
    , neg_mx_64
    , neg_mx_7
    , neg_mx_72
    , neg_mx_8
    , neg_mx_80
    , neg_mx_9
    , neg_mx_96
    , neg_mx_px
    , neg_my_0
    , neg_my_0_dot_5
    , neg_my_1
    , neg_my_10
    , neg_my_11
    , neg_my_12
    , neg_my_14
    , neg_my_16
    , neg_my_1_dot_5
    , neg_my_2
    , neg_my_20
    , neg_my_24
    , neg_my_28
    , neg_my_2_dot_5
    , neg_my_3
    , neg_my_32
    , neg_my_36
    , neg_my_3_dot_5
    , neg_my_4
    , neg_my_40
    , neg_my_44
    , neg_my_48
    , neg_my_5
    , neg_my_52
    , neg_my_56
    , neg_my_6
    , neg_my_60
    , neg_my_64
    , neg_my_7
    , neg_my_72
    , neg_my_8
    , neg_my_80
    , neg_my_9
    , neg_my_96
    , neg_my_px
    , neg_right_0
    , neg_right_0_dot_5
    , neg_right_1
    , neg_right_10
    , neg_right_11
    , neg_right_12
    , neg_right_14
    , neg_right_16
    , neg_right_1_dot_5
    , neg_right_1over2
    , neg_right_1over3
    , neg_right_1over4
    , neg_right_2
    , neg_right_20
    , neg_right_24
    , neg_right_28
    , neg_right_2_dot_5
    , neg_right_2over3
    , neg_right_2over4
    , neg_right_3
    , neg_right_32
    , neg_right_36
    , neg_right_3_dot_5
    , neg_right_3over4
    , neg_right_4
    , neg_right_40
    , neg_right_44
    , neg_right_48
    , neg_right_5
    , neg_right_52
    , neg_right_56
    , neg_right_6
    , neg_right_60
    , neg_right_64
    , neg_right_7
    , neg_right_72
    , neg_right_8
    , neg_right_80
    , neg_right_9
    , neg_right_96
    , neg_right_full
    , neg_right_px
    , neg_rotate_1
    , neg_rotate_12
    , neg_rotate_180
    , neg_rotate_2
    , neg_rotate_3
    , neg_rotate_45
    , neg_rotate_6
    , neg_rotate_90
    , neg_skew_x_1
    , neg_skew_x_12
    , neg_skew_x_2
    , neg_skew_x_3
    , neg_skew_x_6
    , neg_skew_y_1
    , neg_skew_y_12
    , neg_skew_y_2
    , neg_skew_y_3
    , neg_skew_y_6
    , neg_space_x_0
    , neg_space_x_0_dot_5
    , neg_space_x_1
    , neg_space_x_10
    , neg_space_x_11
    , neg_space_x_12
    , neg_space_x_14
    , neg_space_x_16
    , neg_space_x_1_dot_5
    , neg_space_x_2
    , neg_space_x_20
    , neg_space_x_24
    , neg_space_x_28
    , neg_space_x_2_dot_5
    , neg_space_x_3
    , neg_space_x_32
    , neg_space_x_36
    , neg_space_x_3_dot_5
    , neg_space_x_4
    , neg_space_x_40
    , neg_space_x_44
    , neg_space_x_48
    , neg_space_x_5
    , neg_space_x_52
    , neg_space_x_56
    , neg_space_x_6
    , neg_space_x_60
    , neg_space_x_64
    , neg_space_x_7
    , neg_space_x_72
    , neg_space_x_8
    , neg_space_x_80
    , neg_space_x_9
    , neg_space_x_96
    , neg_space_x_px
    , neg_space_y_0
    , neg_space_y_0_dot_5
    , neg_space_y_1
    , neg_space_y_10
    , neg_space_y_11
    , neg_space_y_12
    , neg_space_y_14
    , neg_space_y_16
    , neg_space_y_1_dot_5
    , neg_space_y_2
    , neg_space_y_20
    , neg_space_y_24
    , neg_space_y_28
    , neg_space_y_2_dot_5
    , neg_space_y_3
    , neg_space_y_32
    , neg_space_y_36
    , neg_space_y_3_dot_5
    , neg_space_y_4
    , neg_space_y_40
    , neg_space_y_44
    , neg_space_y_48
    , neg_space_y_5
    , neg_space_y_52
    , neg_space_y_56
    , neg_space_y_6
    , neg_space_y_60
    , neg_space_y_64
    , neg_space_y_7
    , neg_space_y_72
    , neg_space_y_8
    , neg_space_y_80
    , neg_space_y_9
    , neg_space_y_96
    , neg_space_y_px
    , neg_top_0
    , neg_top_0_dot_5
    , neg_top_1
    , neg_top_10
    , neg_top_11
    , neg_top_12
    , neg_top_14
    , neg_top_16
    , neg_top_1_dot_5
    , neg_top_1over2
    , neg_top_1over3
    , neg_top_1over4
    , neg_top_2
    , neg_top_20
    , neg_top_24
    , neg_top_28
    , neg_top_2_dot_5
    , neg_top_2over3
    , neg_top_2over4
    , neg_top_3
    , neg_top_32
    , neg_top_36
    , neg_top_3_dot_5
    , neg_top_3over4
    , neg_top_4
    , neg_top_40
    , neg_top_44
    , neg_top_48
    , neg_top_5
    , neg_top_52
    , neg_top_56
    , neg_top_6
    , neg_top_60
    , neg_top_64
    , neg_top_7
    , neg_top_72
    , neg_top_8
    , neg_top_80
    , neg_top_9
    , neg_top_96
    , neg_top_full
    , neg_top_px
    , neg_translate_x_0
    , neg_translate_x_0_dot_5
    , neg_translate_x_1
    , neg_translate_x_10
    , neg_translate_x_11
    , neg_translate_x_12
    , neg_translate_x_14
    , neg_translate_x_16
    , neg_translate_x_1_dot_5
    , neg_translate_x_1over2
    , neg_translate_x_1over3
    , neg_translate_x_1over4
    , neg_translate_x_2
    , neg_translate_x_20
    , neg_translate_x_24
    , neg_translate_x_28
    , neg_translate_x_2_dot_5
    , neg_translate_x_2over3
    , neg_translate_x_2over4
    , neg_translate_x_3
    , neg_translate_x_32
    , neg_translate_x_36
    , neg_translate_x_3_dot_5
    , neg_translate_x_3over4
    , neg_translate_x_4
    , neg_translate_x_40
    , neg_translate_x_44
    , neg_translate_x_48
    , neg_translate_x_5
    , neg_translate_x_52
    , neg_translate_x_56
    , neg_translate_x_6
    , neg_translate_x_60
    , neg_translate_x_64
    , neg_translate_x_7
    , neg_translate_x_72
    , neg_translate_x_8
    , neg_translate_x_80
    , neg_translate_x_9
    , neg_translate_x_96
    , neg_translate_x_full
    , neg_translate_x_px
    , neg_translate_y_0
    , neg_translate_y_0_dot_5
    , neg_translate_y_1
    , neg_translate_y_10
    , neg_translate_y_11
    , neg_translate_y_12
    , neg_translate_y_14
    , neg_translate_y_16
    , neg_translate_y_1_dot_5
    , neg_translate_y_1over2
    , neg_translate_y_1over3
    , neg_translate_y_1over4
    , neg_translate_y_2
    , neg_translate_y_20
    , neg_translate_y_24
    , neg_translate_y_28
    , neg_translate_y_2_dot_5
    , neg_translate_y_2over3
    , neg_translate_y_2over4
    , neg_translate_y_3
    , neg_translate_y_32
    , neg_translate_y_36
    , neg_translate_y_3_dot_5
    , neg_translate_y_3over4
    , neg_translate_y_4
    , neg_translate_y_40
    , neg_translate_y_44
    , neg_translate_y_48
    , neg_translate_y_5
    , neg_translate_y_52
    , neg_translate_y_56
    , neg_translate_y_6
    , neg_translate_y_60
    , neg_translate_y_64
    , neg_translate_y_7
    , neg_translate_y_72
    , neg_translate_y_8
    , neg_translate_y_80
    , neg_translate_y_9
    , neg_translate_y_96
    , neg_translate_y_full
    , neg_translate_y_px
    , no_underline
    , normal_case
    , normal_nums
    , not_italic
    , not_sr_only
    , object_bottom
    , object_center
    , object_contain
    , object_cover
    , object_fill
    , object_left
    , object_left_bottom
    , object_left_top
    , object_none
    , object_right
    , object_right_bottom
    , object_right_top
    , object_scale_down
    , object_top
    , oldstyle_nums
    , opacity_0
    , opacity_10
    , opacity_100
    , opacity_20
    , opacity_25
    , opacity_30
    , opacity_40
    , opacity_5
    , opacity_50
    , opacity_60
    , opacity_70
    , opacity_75
    , opacity_80
    , opacity_90
    , opacity_95
    , order_1
    , order_10
    , order_11
    , order_12
    , order_2
    , order_3
    , order_4
    , order_5
    , order_6
    , order_7
    , order_8
    , order_9
    , order_first
    , order_last
    , order_none
    , ordinal
    , origin_bottom
    , origin_bottom_left
    , origin_bottom_right
    , origin_center
    , origin_left
    , origin_right
    , origin_top
    , origin_top_left
    , origin_top_right
    , outline_black
    , outline_none
    , outline_white
    , overflow_auto
    , overflow_clip
    , overflow_ellipsis
    , overflow_hidden
    , overflow_scroll
    , overflow_visible
    , overflow_x_auto
    , overflow_x_hidden
    , overflow_x_scroll
    , overflow_x_visible
    , overflow_y_auto
    , overflow_y_hidden
    , overflow_y_scroll
    , overflow_y_visible
    , overscroll_auto
    , overscroll_contain
    , overscroll_none
    , overscroll_x_auto
    , overscroll_x_contain
    , overscroll_x_none
    , overscroll_y_auto
    , overscroll_y_contain
    , overscroll_y_none
    , p_0
    , p_0_dot_5
    , p_1
    , p_10
    , p_11
    , p_12
    , p_14
    , p_16
    , p_1_dot_5
    , p_2
    , p_20
    , p_24
    , p_28
    , p_2_dot_5
    , p_3
    , p_32
    , p_36
    , p_3_dot_5
    , p_4
    , p_40
    , p_44
    , p_48
    , p_5
    , p_52
    , p_56
    , p_6
    , p_60
    , p_64
    , p_7
    , p_72
    , p_8
    , p_80
    , p_9
    , p_96
    , p_px
    , pb_0
    , pb_0_dot_5
    , pb_1
    , pb_10
    , pb_11
    , pb_12
    , pb_14
    , pb_16
    , pb_1_dot_5
    , pb_2
    , pb_20
    , pb_24
    , pb_28
    , pb_2_dot_5
    , pb_3
    , pb_32
    , pb_36
    , pb_3_dot_5
    , pb_4
    , pb_40
    , pb_44
    , pb_48
    , pb_5
    , pb_52
    , pb_56
    , pb_6
    , pb_60
    , pb_64
    , pb_7
    , pb_72
    , pb_8
    , pb_80
    , pb_9
    , pb_96
    , pb_px
    , pl_0
    , pl_0_dot_5
    , pl_1
    , pl_10
    , pl_11
    , pl_12
    , pl_14
    , pl_16
    , pl_1_dot_5
    , pl_2
    , pl_20
    , pl_24
    , pl_28
    , pl_2_dot_5
    , pl_3
    , pl_32
    , pl_36
    , pl_3_dot_5
    , pl_4
    , pl_40
    , pl_44
    , pl_48
    , pl_5
    , pl_52
    , pl_56
    , pl_6
    , pl_60
    , pl_64
    , pl_7
    , pl_72
    , pl_8
    , pl_80
    , pl_9
    , pl_96
    , pl_px
    , place_content_around
    , place_content_between
    , place_content_center
    , place_content_end
    , place_content_evenly
    , place_content_start
    , place_content_stretch
    , place_items_center
    , place_items_end
    , place_items_start
    , place_items_stretch
    , place_self_auto
    , place_self_center
    , place_self_end
    , place_self_start
    , place_self_stretch
    , placeholder_black
    , placeholder_blue_100
    , placeholder_blue_200
    , placeholder_blue_300
    , placeholder_blue_400
    , placeholder_blue_500
    , placeholder_blue_600
    , placeholder_blue_700
    , placeholder_blue_800
    , placeholder_blue_900
    , placeholder_current
    , placeholder_gray_100
    , placeholder_gray_200
    , placeholder_gray_300
    , placeholder_gray_400
    , placeholder_gray_500
    , placeholder_gray_600
    , placeholder_gray_700
    , placeholder_gray_800
    , placeholder_gray_900
    , placeholder_green_100
    , placeholder_green_200
    , placeholder_green_300
    , placeholder_green_400
    , placeholder_green_500
    , placeholder_green_600
    , placeholder_green_700
    , placeholder_green_800
    , placeholder_green_900
    , placeholder_indigo_100
    , placeholder_indigo_200
    , placeholder_indigo_300
    , placeholder_indigo_400
    , placeholder_indigo_500
    , placeholder_indigo_600
    , placeholder_indigo_700
    , placeholder_indigo_800
    , placeholder_indigo_900
    , placeholder_opacity_0
    , placeholder_opacity_10
    , placeholder_opacity_100
    , placeholder_opacity_20
    , placeholder_opacity_25
    , placeholder_opacity_30
    , placeholder_opacity_40
    , placeholder_opacity_5
    , placeholder_opacity_50
    , placeholder_opacity_60
    , placeholder_opacity_70
    , placeholder_opacity_75
    , placeholder_opacity_80
    , placeholder_opacity_90
    , placeholder_opacity_95
    , placeholder_orange_100
    , placeholder_orange_200
    , placeholder_orange_300
    , placeholder_orange_400
    , placeholder_orange_500
    , placeholder_orange_600
    , placeholder_orange_700
    , placeholder_orange_800
    , placeholder_orange_900
    , placeholder_pink_100
    , placeholder_pink_200
    , placeholder_pink_300
    , placeholder_pink_400
    , placeholder_pink_500
    , placeholder_pink_600
    , placeholder_pink_700
    , placeholder_pink_800
    , placeholder_pink_900
    , placeholder_purple_100
    , placeholder_purple_200
    , placeholder_purple_300
    , placeholder_purple_400
    , placeholder_purple_500
    , placeholder_purple_600
    , placeholder_purple_700
    , placeholder_purple_800
    , placeholder_purple_900
    , placeholder_red_100
    , placeholder_red_200
    , placeholder_red_300
    , placeholder_red_400
    , placeholder_red_500
    , placeholder_red_600
    , placeholder_red_700
    , placeholder_red_800
    , placeholder_red_900
    , placeholder_teal_100
    , placeholder_teal_200
    , placeholder_teal_300
    , placeholder_teal_400
    , placeholder_teal_500
    , placeholder_teal_600
    , placeholder_teal_700
    , placeholder_teal_800
    , placeholder_teal_900
    , placeholder_transparent
    , placeholder_white
    , placeholder_yellow_100
    , placeholder_yellow_200
    , placeholder_yellow_300
    , placeholder_yellow_400
    , placeholder_yellow_500
    , placeholder_yellow_600
    , placeholder_yellow_700
    , placeholder_yellow_800
    , placeholder_yellow_900
    , pointer_events_auto
    , pointer_events_none
    , pr_0
    , pr_0_dot_5
    , pr_1
    , pr_10
    , pr_11
    , pr_12
    , pr_14
    , pr_16
    , pr_1_dot_5
    , pr_2
    , pr_20
    , pr_24
    , pr_28
    , pr_2_dot_5
    , pr_3
    , pr_32
    , pr_36
    , pr_3_dot_5
    , pr_4
    , pr_40
    , pr_44
    , pr_48
    , pr_5
    , pr_52
    , pr_56
    , pr_6
    , pr_60
    , pr_64
    , pr_7
    , pr_72
    , pr_8
    , pr_80
    , pr_9
    , pr_96
    , pr_px
    , proportional_nums
    , pt_0
    , pt_0_dot_5
    , pt_1
    , pt_10
    , pt_11
    , pt_12
    , pt_14
    , pt_16
    , pt_1_dot_5
    , pt_2
    , pt_20
    , pt_24
    , pt_28
    , pt_2_dot_5
    , pt_3
    , pt_32
    , pt_36
    , pt_3_dot_5
    , pt_4
    , pt_40
    , pt_44
    , pt_48
    , pt_5
    , pt_52
    , pt_56
    , pt_6
    , pt_60
    , pt_64
    , pt_7
    , pt_72
    , pt_8
    , pt_80
    , pt_9
    , pt_96
    , pt_px
    , px_0
    , px_0_dot_5
    , px_1
    , px_10
    , px_11
    , px_12
    , px_14
    , px_16
    , px_1_dot_5
    , px_2
    , px_20
    , px_24
    , px_28
    , px_2_dot_5
    , px_3
    , px_32
    , px_36
    , px_3_dot_5
    , px_4
    , px_40
    , px_44
    , px_48
    , px_5
    , px_52
    , px_56
    , px_6
    , px_60
    , px_64
    , px_7
    , px_72
    , px_8
    , px_80
    , px_9
    , px_96
    , px_px
    , py_0
    , py_0_dot_5
    , py_1
    , py_10
    , py_11
    , py_12
    , py_14
    , py_16
    , py_1_dot_5
    , py_2
    , py_20
    , py_24
    , py_28
    , py_2_dot_5
    , py_3
    , py_32
    , py_36
    , py_3_dot_5
    , py_4
    , py_40
    , py_44
    , py_48
    , py_5
    , py_52
    , py_56
    , py_6
    , py_60
    , py_64
    , py_7
    , py_72
    , py_8
    , py_80
    , py_9
    , py_96
    , py_px
    , relative
    , resize
    , resize_none
    , resize_x
    , resize_y
    , right_0
    , right_0_dot_5
    , right_1
    , right_10
    , right_11
    , right_12
    , right_14
    , right_16
    , right_1_dot_5
    , right_1over2
    , right_1over3
    , right_1over4
    , right_2
    , right_20
    , right_24
    , right_28
    , right_2_dot_5
    , right_2over3
    , right_2over4
    , right_3
    , right_32
    , right_36
    , right_3_dot_5
    , right_3over4
    , right_4
    , right_40
    , right_44
    , right_48
    , right_5
    , right_52
    , right_56
    , right_6
    , right_60
    , right_64
    , right_7
    , right_72
    , right_8
    , right_80
    , right_9
    , right_96
    , right_auto
    , right_full
    , right_px
    , ring
    , ring_0
    , ring_1
    , ring_2
    , ring_4
    , ring_8
    , ring_black
    , ring_blue_100
    , ring_blue_200
    , ring_blue_300
    , ring_blue_400
    , ring_blue_500
    , ring_blue_600
    , ring_blue_700
    , ring_blue_800
    , ring_blue_900
    , ring_current
    , ring_gray_100
    , ring_gray_200
    , ring_gray_300
    , ring_gray_400
    , ring_gray_500
    , ring_gray_600
    , ring_gray_700
    , ring_gray_800
    , ring_gray_900
    , ring_green_100
    , ring_green_200
    , ring_green_300
    , ring_green_400
    , ring_green_500
    , ring_green_600
    , ring_green_700
    , ring_green_800
    , ring_green_900
    , ring_indigo_100
    , ring_indigo_200
    , ring_indigo_300
    , ring_indigo_400
    , ring_indigo_500
    , ring_indigo_600
    , ring_indigo_700
    , ring_indigo_800
    , ring_indigo_900
    , ring_inset
    , ring_offset_0
    , ring_offset_1
    , ring_offset_2
    , ring_offset_4
    , ring_offset_8
    , ring_offset_black
    , ring_offset_blue_100
    , ring_offset_blue_200
    , ring_offset_blue_300
    , ring_offset_blue_400
    , ring_offset_blue_500
    , ring_offset_blue_600
    , ring_offset_blue_700
    , ring_offset_blue_800
    , ring_offset_blue_900
    , ring_offset_current
    , ring_offset_gray_100
    , ring_offset_gray_200
    , ring_offset_gray_300
    , ring_offset_gray_400
    , ring_offset_gray_500
    , ring_offset_gray_600
    , ring_offset_gray_700
    , ring_offset_gray_800
    , ring_offset_gray_900
    , ring_offset_green_100
    , ring_offset_green_200
    , ring_offset_green_300
    , ring_offset_green_400
    , ring_offset_green_500
    , ring_offset_green_600
    , ring_offset_green_700
    , ring_offset_green_800
    , ring_offset_green_900
    , ring_offset_indigo_100
    , ring_offset_indigo_200
    , ring_offset_indigo_300
    , ring_offset_indigo_400
    , ring_offset_indigo_500
    , ring_offset_indigo_600
    , ring_offset_indigo_700
    , ring_offset_indigo_800
    , ring_offset_indigo_900
    , ring_offset_orange_100
    , ring_offset_orange_200
    , ring_offset_orange_300
    , ring_offset_orange_400
    , ring_offset_orange_500
    , ring_offset_orange_600
    , ring_offset_orange_700
    , ring_offset_orange_800
    , ring_offset_orange_900
    , ring_offset_pink_100
    , ring_offset_pink_200
    , ring_offset_pink_300
    , ring_offset_pink_400
    , ring_offset_pink_500
    , ring_offset_pink_600
    , ring_offset_pink_700
    , ring_offset_pink_800
    , ring_offset_pink_900
    , ring_offset_purple_100
    , ring_offset_purple_200
    , ring_offset_purple_300
    , ring_offset_purple_400
    , ring_offset_purple_500
    , ring_offset_purple_600
    , ring_offset_purple_700
    , ring_offset_purple_800
    , ring_offset_purple_900
    , ring_offset_red_100
    , ring_offset_red_200
    , ring_offset_red_300
    , ring_offset_red_400
    , ring_offset_red_500
    , ring_offset_red_600
    , ring_offset_red_700
    , ring_offset_red_800
    , ring_offset_red_900
    , ring_offset_teal_100
    , ring_offset_teal_200
    , ring_offset_teal_300
    , ring_offset_teal_400
    , ring_offset_teal_500
    , ring_offset_teal_600
    , ring_offset_teal_700
    , ring_offset_teal_800
    , ring_offset_teal_900
    , ring_offset_transparent
    , ring_offset_white
    , ring_offset_yellow_100
    , ring_offset_yellow_200
    , ring_offset_yellow_300
    , ring_offset_yellow_400
    , ring_offset_yellow_500
    , ring_offset_yellow_600
    , ring_offset_yellow_700
    , ring_offset_yellow_800
    , ring_offset_yellow_900
    , ring_opacity_0
    , ring_opacity_10
    , ring_opacity_100
    , ring_opacity_20
    , ring_opacity_25
    , ring_opacity_30
    , ring_opacity_40
    , ring_opacity_5
    , ring_opacity_50
    , ring_opacity_60
    , ring_opacity_70
    , ring_opacity_75
    , ring_opacity_80
    , ring_opacity_90
    , ring_opacity_95
    , ring_orange_100
    , ring_orange_200
    , ring_orange_300
    , ring_orange_400
    , ring_orange_500
    , ring_orange_600
    , ring_orange_700
    , ring_orange_800
    , ring_orange_900
    , ring_pink_100
    , ring_pink_200
    , ring_pink_300
    , ring_pink_400
    , ring_pink_500
    , ring_pink_600
    , ring_pink_700
    , ring_pink_800
    , ring_pink_900
    , ring_purple_100
    , ring_purple_200
    , ring_purple_300
    , ring_purple_400
    , ring_purple_500
    , ring_purple_600
    , ring_purple_700
    , ring_purple_800
    , ring_purple_900
    , ring_red_100
    , ring_red_200
    , ring_red_300
    , ring_red_400
    , ring_red_500
    , ring_red_600
    , ring_red_700
    , ring_red_800
    , ring_red_900
    , ring_teal_100
    , ring_teal_200
    , ring_teal_300
    , ring_teal_400
    , ring_teal_500
    , ring_teal_600
    , ring_teal_700
    , ring_teal_800
    , ring_teal_900
    , ring_transparent
    , ring_white
    , ring_yellow_100
    , ring_yellow_200
    , ring_yellow_300
    , ring_yellow_400
    , ring_yellow_500
    , ring_yellow_600
    , ring_yellow_700
    , ring_yellow_800
    , ring_yellow_900
    , rotate_0
    , rotate_1
    , rotate_12
    , rotate_180
    , rotate_2
    , rotate_3
    , rotate_45
    , rotate_6
    , rotate_90
    , rounded
    , rounded_2xl
    , rounded_3xl
    , rounded_b
    , rounded_b_2xl
    , rounded_b_3xl
    , rounded_b_full
    , rounded_b_lg
    , rounded_b_md
    , rounded_b_none
    , rounded_b_sm
    , rounded_b_xl
    , rounded_bl
    , rounded_bl_2xl
    , rounded_bl_3xl
    , rounded_bl_full
    , rounded_bl_lg
    , rounded_bl_md
    , rounded_bl_none
    , rounded_bl_sm
    , rounded_bl_xl
    , rounded_br
    , rounded_br_2xl
    , rounded_br_3xl
    , rounded_br_full
    , rounded_br_lg
    , rounded_br_md
    , rounded_br_none
    , rounded_br_sm
    , rounded_br_xl
    , rounded_full
    , rounded_l
    , rounded_l_2xl
    , rounded_l_3xl
    , rounded_l_full
    , rounded_l_lg
    , rounded_l_md
    , rounded_l_none
    , rounded_l_sm
    , rounded_l_xl
    , rounded_lg
    , rounded_md
    , rounded_none
    , rounded_r
    , rounded_r_2xl
    , rounded_r_3xl
    , rounded_r_full
    , rounded_r_lg
    , rounded_r_md
    , rounded_r_none
    , rounded_r_sm
    , rounded_r_xl
    , rounded_sm
    , rounded_t
    , rounded_t_2xl
    , rounded_t_3xl
    , rounded_t_full
    , rounded_t_lg
    , rounded_t_md
    , rounded_t_none
    , rounded_t_sm
    , rounded_t_xl
    , rounded_tl
    , rounded_tl_2xl
    , rounded_tl_3xl
    , rounded_tl_full
    , rounded_tl_lg
    , rounded_tl_md
    , rounded_tl_none
    , rounded_tl_sm
    , rounded_tl_xl
    , rounded_tr
    , rounded_tr_2xl
    , rounded_tr_3xl
    , rounded_tr_full
    , rounded_tr_lg
    , rounded_tr_md
    , rounded_tr_none
    , rounded_tr_sm
    , rounded_tr_xl
    , rounded_xl
    , row_auto
    , row_end_1
    , row_end_2
    , row_end_3
    , row_end_4
    , row_end_5
    , row_end_6
    , row_end_7
    , row_end_auto
    , row_span_1
    , row_span_2
    , row_span_3
    , row_span_4
    , row_span_5
    , row_span_6
    , row_span_full
    , row_start_1
    , row_start_2
    , row_start_3
    , row_start_4
    , row_start_5
    , row_start_6
    , row_start_7
    , row_start_auto
    , saturate_0
    , saturate_100
    , saturate_150
    , saturate_200
    , saturate_50
    , scale_0
    , scale_100
    , scale_105
    , scale_110
    , scale_125
    , scale_150
    , scale_50
    , scale_75
    , scale_90
    , scale_95
    , scale_x_0
    , scale_x_100
    , scale_x_105
    , scale_x_110
    , scale_x_125
    , scale_x_150
    , scale_x_50
    , scale_x_75
    , scale_x_90
    , scale_x_95
    , scale_y_0
    , scale_y_100
    , scale_y_105
    , scale_y_110
    , scale_y_125
    , scale_y_150
    , scale_y_50
    , scale_y_75
    , scale_y_90
    , scale_y_95
    , select_all
    , select_auto
    , select_none
    , select_text
    , self_auto
    , self_center
    , self_end
    , self_start
    , self_stretch
    , sepia
    , sepia_0
    , shadow
    , shadow_2xl
    , shadow_inner
    , shadow_lg
    , shadow_md
    , shadow_none
    , shadow_sm
    , shadow_xl
    , skew_x_0
    , skew_x_1
    , skew_x_12
    , skew_x_2
    , skew_x_3
    , skew_x_6
    , skew_y_0
    , skew_y_1
    , skew_y_12
    , skew_y_2
    , skew_y_3
    , skew_y_6
    , slashed_zero
    , space_x_0
    , space_x_0_dot_5
    , space_x_1
    , space_x_10
    , space_x_11
    , space_x_12
    , space_x_14
    , space_x_16
    , space_x_1_dot_5
    , space_x_2
    , space_x_20
    , space_x_24
    , space_x_28
    , space_x_2_dot_5
    , space_x_3
    , space_x_32
    , space_x_36
    , space_x_3_dot_5
    , space_x_4
    , space_x_40
    , space_x_44
    , space_x_48
    , space_x_5
    , space_x_52
    , space_x_56
    , space_x_6
    , space_x_60
    , space_x_64
    , space_x_7
    , space_x_72
    , space_x_8
    , space_x_80
    , space_x_9
    , space_x_96
    , space_x_px
    , space_x_reverse
    , space_y_0
    , space_y_0_dot_5
    , space_y_1
    , space_y_10
    , space_y_11
    , space_y_12
    , space_y_14
    , space_y_16
    , space_y_1_dot_5
    , space_y_2
    , space_y_20
    , space_y_24
    , space_y_28
    , space_y_2_dot_5
    , space_y_3
    , space_y_32
    , space_y_36
    , space_y_3_dot_5
    , space_y_4
    , space_y_40
    , space_y_44
    , space_y_48
    , space_y_5
    , space_y_52
    , space_y_56
    , space_y_6
    , space_y_60
    , space_y_64
    , space_y_7
    , space_y_72
    , space_y_8
    , space_y_80
    , space_y_9
    , space_y_96
    , space_y_px
    , space_y_reverse
    , sr_only
    , stacked_fractions
    , static
    , sticky
    , stroke_0
    , stroke_1
    , stroke_2
    , stroke_current
    , subpixel_antialiased
    , table
    , table_auto
    , table_caption
    , table_cell
    , table_column
    , table_column_group
    , table_fixed
    , table_footer_group
    , table_header_group
    , table_row
    , table_row_group
    , tabular_nums
    , text_2xl
    , text_3xl
    , text_4xl
    , text_5xl
    , text_6xl
    , text_base
    , text_black
    , text_blue_100
    , text_blue_200
    , text_blue_300
    , text_blue_400
    , text_blue_500
    , text_blue_600
    , text_blue_700
    , text_blue_800
    , text_blue_900
    , text_center
    , text_current
    , text_gray_100
    , text_gray_200
    , text_gray_300
    , text_gray_400
    , text_gray_500
    , text_gray_600
    , text_gray_700
    , text_gray_800
    , text_gray_900
    , text_green_100
    , text_green_200
    , text_green_300
    , text_green_400
    , text_green_500
    , text_green_600
    , text_green_700
    , text_green_800
    , text_green_900
    , text_indigo_100
    , text_indigo_200
    , text_indigo_300
    , text_indigo_400
    , text_indigo_500
    , text_indigo_600
    , text_indigo_700
    , text_indigo_800
    , text_indigo_900
    , text_justify
    , text_left
    , text_lg
    , text_opacity_0
    , text_opacity_10
    , text_opacity_100
    , text_opacity_20
    , text_opacity_25
    , text_opacity_30
    , text_opacity_40
    , text_opacity_5
    , text_opacity_50
    , text_opacity_60
    , text_opacity_70
    , text_opacity_75
    , text_opacity_80
    , text_opacity_90
    , text_opacity_95
    , text_orange_100
    , text_orange_200
    , text_orange_300
    , text_orange_400
    , text_orange_500
    , text_orange_600
    , text_orange_700
    , text_orange_800
    , text_orange_900
    , text_pink_100
    , text_pink_200
    , text_pink_300
    , text_pink_400
    , text_pink_500
    , text_pink_600
    , text_pink_700
    , text_pink_800
    , text_pink_900
    , text_purple_100
    , text_purple_200
    , text_purple_300
    , text_purple_400
    , text_purple_500
    , text_purple_600
    , text_purple_700
    , text_purple_800
    , text_purple_900
    , text_red_100
    , text_red_200
    , text_red_300
    , text_red_400
    , text_red_500
    , text_red_600
    , text_red_700
    , text_red_800
    , text_red_900
    , text_right
    , text_sm
    , text_teal_100
    , text_teal_200
    , text_teal_300
    , text_teal_400
    , text_teal_500
    , text_teal_600
    , text_teal_700
    , text_teal_800
    , text_teal_900
    , text_transparent
    , text_white
    , text_xl
    , text_xs
    , text_yellow_100
    , text_yellow_200
    , text_yellow_300
    , text_yellow_400
    , text_yellow_500
    , text_yellow_600
    , text_yellow_700
    , text_yellow_800
    , text_yellow_900
    , to_black
    , to_blue_100
    , to_blue_200
    , to_blue_300
    , to_blue_400
    , to_blue_500
    , to_blue_600
    , to_blue_700
    , to_blue_800
    , to_blue_900
    , to_current
    , to_gray_100
    , to_gray_200
    , to_gray_300
    , to_gray_400
    , to_gray_500
    , to_gray_600
    , to_gray_700
    , to_gray_800
    , to_gray_900
    , to_green_100
    , to_green_200
    , to_green_300
    , to_green_400
    , to_green_500
    , to_green_600
    , to_green_700
    , to_green_800
    , to_green_900
    , to_indigo_100
    , to_indigo_200
    , to_indigo_300
    , to_indigo_400
    , to_indigo_500
    , to_indigo_600
    , to_indigo_700
    , to_indigo_800
    , to_indigo_900
    , to_orange_100
    , to_orange_200
    , to_orange_300
    , to_orange_400
    , to_orange_500
    , to_orange_600
    , to_orange_700
    , to_orange_800
    , to_orange_900
    , to_pink_100
    , to_pink_200
    , to_pink_300
    , to_pink_400
    , to_pink_500
    , to_pink_600
    , to_pink_700
    , to_pink_800
    , to_pink_900
    , to_purple_100
    , to_purple_200
    , to_purple_300
    , to_purple_400
    , to_purple_500
    , to_purple_600
    , to_purple_700
    , to_purple_800
    , to_purple_900
    , to_red_100
    , to_red_200
    , to_red_300
    , to_red_400
    , to_red_500
    , to_red_600
    , to_red_700
    , to_red_800
    , to_red_900
    , to_teal_100
    , to_teal_200
    , to_teal_300
    , to_teal_400
    , to_teal_500
    , to_teal_600
    , to_teal_700
    , to_teal_800
    , to_teal_900
    , to_transparent
    , to_white
    , to_yellow_100
    , to_yellow_200
    , to_yellow_300
    , to_yellow_400
    , to_yellow_500
    , to_yellow_600
    , to_yellow_700
    , to_yellow_800
    , to_yellow_900
    , top_0
    , top_0_dot_5
    , top_1
    , top_10
    , top_11
    , top_12
    , top_14
    , top_16
    , top_1_dot_5
    , top_1over2
    , top_1over3
    , top_1over4
    , top_2
    , top_20
    , top_24
    , top_28
    , top_2_dot_5
    , top_2over3
    , top_2over4
    , top_3
    , top_32
    , top_36
    , top_3_dot_5
    , top_3over4
    , top_4
    , top_40
    , top_44
    , top_48
    , top_5
    , top_52
    , top_56
    , top_6
    , top_60
    , top_64
    , top_7
    , top_72
    , top_8
    , top_80
    , top_9
    , top_96
    , top_auto
    , top_full
    , top_px
    , tracking_normal
    , tracking_tight
    , tracking_tighter
    , tracking_wide
    , tracking_wider
    , tracking_widest
    , transform
    , transform_gpu
    , transform_none
    , transition
    , transition_all
    , transition_colors
    , transition_none
    , transition_opacity
    , transition_shadow
    , transition_transform
    , translate_x_0
    , translate_x_0_dot_5
    , translate_x_1
    , translate_x_10
    , translate_x_11
    , translate_x_12
    , translate_x_14
    , translate_x_16
    , translate_x_1_dot_5
    , translate_x_1over2
    , translate_x_1over3
    , translate_x_1over4
    , translate_x_2
    , translate_x_20
    , translate_x_24
    , translate_x_28
    , translate_x_2_dot_5
    , translate_x_2over3
    , translate_x_2over4
    , translate_x_3
    , translate_x_32
    , translate_x_36
    , translate_x_3_dot_5
    , translate_x_3over4
    , translate_x_4
    , translate_x_40
    , translate_x_44
    , translate_x_48
    , translate_x_5
    , translate_x_52
    , translate_x_56
    , translate_x_6
    , translate_x_60
    , translate_x_64
    , translate_x_7
    , translate_x_72
    , translate_x_8
    , translate_x_80
    , translate_x_9
    , translate_x_96
    , translate_x_full
    , translate_x_px
    , translate_y_0
    , translate_y_0_dot_5
    , translate_y_1
    , translate_y_10
    , translate_y_11
    , translate_y_12
    , translate_y_14
    , translate_y_16
    , translate_y_1_dot_5
    , translate_y_1over2
    , translate_y_1over3
    , translate_y_1over4
    , translate_y_2
    , translate_y_20
    , translate_y_24
    , translate_y_28
    , translate_y_2_dot_5
    , translate_y_2over3
    , translate_y_2over4
    , translate_y_3
    , translate_y_32
    , translate_y_36
    , translate_y_3_dot_5
    , translate_y_3over4
    , translate_y_4
    , translate_y_40
    , translate_y_44
    , translate_y_48
    , translate_y_5
    , translate_y_52
    , translate_y_56
    , translate_y_6
    , translate_y_60
    , translate_y_64
    , translate_y_7
    , translate_y_72
    , translate_y_8
    , translate_y_80
    , translate_y_9
    , translate_y_96
    , translate_y_full
    , translate_y_px
    , truncate
    , underline
    , uppercase
    , via_black
    , via_blue_100
    , via_blue_200
    , via_blue_300
    , via_blue_400
    , via_blue_500
    , via_blue_600
    , via_blue_700
    , via_blue_800
    , via_blue_900
    , via_current
    , via_gray_100
    , via_gray_200
    , via_gray_300
    , via_gray_400
    , via_gray_500
    , via_gray_600
    , via_gray_700
    , via_gray_800
    , via_gray_900
    , via_green_100
    , via_green_200
    , via_green_300
    , via_green_400
    , via_green_500
    , via_green_600
    , via_green_700
    , via_green_800
    , via_green_900
    , via_indigo_100
    , via_indigo_200
    , via_indigo_300
    , via_indigo_400
    , via_indigo_500
    , via_indigo_600
    , via_indigo_700
    , via_indigo_800
    , via_indigo_900
    , via_orange_100
    , via_orange_200
    , via_orange_300
    , via_orange_400
    , via_orange_500
    , via_orange_600
    , via_orange_700
    , via_orange_800
    , via_orange_900
    , via_pink_100
    , via_pink_200
    , via_pink_300
    , via_pink_400
    , via_pink_500
    , via_pink_600
    , via_pink_700
    , via_pink_800
    , via_pink_900
    , via_purple_100
    , via_purple_200
    , via_purple_300
    , via_purple_400
    , via_purple_500
    , via_purple_600
    , via_purple_700
    , via_purple_800
    , via_purple_900
    , via_red_100
    , via_red_200
    , via_red_300
    , via_red_400
    , via_red_500
    , via_red_600
    , via_red_700
    , via_red_800
    , via_red_900
    , via_teal_100
    , via_teal_200
    , via_teal_300
    , via_teal_400
    , via_teal_500
    , via_teal_600
    , via_teal_700
    , via_teal_800
    , via_teal_900
    , via_transparent
    , via_white
    , via_yellow_100
    , via_yellow_200
    , via_yellow_300
    , via_yellow_400
    , via_yellow_500
    , via_yellow_600
    , via_yellow_700
    , via_yellow_800
    , via_yellow_900
    , visible
    , w_0
    , w_0_dot_5
    , w_1
    , w_10
    , w_10over12
    , w_11
    , w_11over12
    , w_12
    , w_14
    , w_16
    , w_1_dot_5
    , w_1over12
    , w_1over2
    , w_1over3
    , w_1over4
    , w_1over5
    , w_1over6
    , w_2
    , w_20
    , w_24
    , w_28
    , w_2_dot_5
    , w_2over12
    , w_2over3
    , w_2over4
    , w_2over5
    , w_2over6
    , w_3
    , w_32
    , w_36
    , w_3_dot_5
    , w_3over12
    , w_3over4
    , w_3over5
    , w_3over6
    , w_4
    , w_40
    , w_44
    , w_48
    , w_4over12
    , w_4over5
    , w_4over6
    , w_5
    , w_52
    , w_56
    , w_5over12
    , w_5over6
    , w_6
    , w_60
    , w_64
    , w_6over12
    , w_7
    , w_72
    , w_7over12
    , w_8
    , w_80
    , w_8over12
    , w_9
    , w_96
    , w_9over12
    , w_auto
    , w_full
    , w_max
    , w_min
    , w_px
    , w_screen
    , whitespace_normal
    , whitespace_nowrap
    , whitespace_pre
    , whitespace_pre_line
    , whitespace_pre_wrap
    , z_0
    , z_10
    , z_20
    , z_30
    , z_40
    , z_50
    , z_auto
    )

{-|


## Tailwind Utilities

This module contains

1.  Tailwind's style reset in the `globalStyles` definition.
    Make sure to include this in your HTML via elm-css' `Css.Global.global` function.
2.  All default tailwind css utility classes. You can browse the documentation on
    [tailwind's website](https://tailwindcss.com/docs)

@docs globalStyles
@docs absolute
@docs align_baseline
@docs align_bottom
@docs align_middle
@docs align_text_bottom
@docs align_text_top
@docs align_top
@docs animate_bounce
@docs animate_none
@docs animate_ping
@docs animate_pulse
@docs animate_spin
@docs antialiased
@docs appearance_none
@docs auto_cols_auto
@docs auto_cols_fr
@docs auto_cols_max
@docs auto_cols_min
@docs auto_rows_auto
@docs auto_rows_fr
@docs auto_rows_max
@docs auto_rows_min
@docs backdrop_blur
@docs backdrop_blur_0
@docs backdrop_blur_2xl
@docs backdrop_blur_3xl
@docs backdrop_blur_lg
@docs backdrop_blur_md
@docs backdrop_blur_sm
@docs backdrop_blur_xl
@docs backdrop_brightness_0
@docs backdrop_brightness_100
@docs backdrop_brightness_105
@docs backdrop_brightness_110
@docs backdrop_brightness_125
@docs backdrop_brightness_150
@docs backdrop_brightness_200
@docs backdrop_brightness_50
@docs backdrop_brightness_75
@docs backdrop_brightness_90
@docs backdrop_brightness_95
@docs backdrop_contrast_0
@docs backdrop_contrast_100
@docs backdrop_contrast_125
@docs backdrop_contrast_150
@docs backdrop_contrast_200
@docs backdrop_contrast_50
@docs backdrop_contrast_75
@docs backdrop_filter
@docs backdrop_filter_none
@docs backdrop_grayscale
@docs backdrop_grayscale_0
@docs backdrop_hue_rotate_0
@docs backdrop_hue_rotate_15
@docs backdrop_hue_rotate_180
@docs backdrop_hue_rotate_30
@docs backdrop_hue_rotate_60
@docs backdrop_hue_rotate_90
@docs backdrop_invert
@docs backdrop_invert_0
@docs backdrop_opacity_0
@docs backdrop_opacity_10
@docs backdrop_opacity_100
@docs backdrop_opacity_20
@docs backdrop_opacity_25
@docs backdrop_opacity_30
@docs backdrop_opacity_40
@docs backdrop_opacity_5
@docs backdrop_opacity_50
@docs backdrop_opacity_60
@docs backdrop_opacity_70
@docs backdrop_opacity_75
@docs backdrop_opacity_80
@docs backdrop_opacity_90
@docs backdrop_opacity_95
@docs backdrop_saturate_0
@docs backdrop_saturate_100
@docs backdrop_saturate_150
@docs backdrop_saturate_200
@docs backdrop_saturate_50
@docs backdrop_sepia
@docs backdrop_sepia_0
@docs bg_auto
@docs bg_black
@docs bg_blend_color
@docs bg_blend_color_burn
@docs bg_blend_color_dodge
@docs bg_blend_darken
@docs bg_blend_difference
@docs bg_blend_exclusion
@docs bg_blend_hard_light
@docs bg_blend_hue
@docs bg_blend_lighten
@docs bg_blend_luminosity
@docs bg_blend_multiply
@docs bg_blend_normal
@docs bg_blend_overlay
@docs bg_blend_saturation
@docs bg_blend_screen
@docs bg_blend_soft_light
@docs bg_blue_100
@docs bg_blue_200
@docs bg_blue_300
@docs bg_blue_400
@docs bg_blue_500
@docs bg_blue_600
@docs bg_blue_700
@docs bg_blue_800
@docs bg_blue_900
@docs bg_bottom
@docs bg_center
@docs bg_clip_border
@docs bg_clip_content
@docs bg_clip_padding
@docs bg_clip_text
@docs bg_contain
@docs bg_cover
@docs bg_current
@docs bg_fixed
@docs bg_gradient_to_b
@docs bg_gradient_to_bl
@docs bg_gradient_to_br
@docs bg_gradient_to_l
@docs bg_gradient_to_r
@docs bg_gradient_to_t
@docs bg_gradient_to_tl
@docs bg_gradient_to_tr
@docs bg_gray_100
@docs bg_gray_200
@docs bg_gray_300
@docs bg_gray_400
@docs bg_gray_500
@docs bg_gray_600
@docs bg_gray_700
@docs bg_gray_800
@docs bg_gray_900
@docs bg_green_100
@docs bg_green_200
@docs bg_green_300
@docs bg_green_400
@docs bg_green_500
@docs bg_green_600
@docs bg_green_700
@docs bg_green_800
@docs bg_green_900
@docs bg_indigo_100
@docs bg_indigo_200
@docs bg_indigo_300
@docs bg_indigo_400
@docs bg_indigo_500
@docs bg_indigo_600
@docs bg_indigo_700
@docs bg_indigo_800
@docs bg_indigo_900
@docs bg_left
@docs bg_left_bottom
@docs bg_left_top
@docs bg_local
@docs bg_no_repeat
@docs bg_none
@docs bg_opacity_0
@docs bg_opacity_10
@docs bg_opacity_100
@docs bg_opacity_20
@docs bg_opacity_25
@docs bg_opacity_30
@docs bg_opacity_40
@docs bg_opacity_5
@docs bg_opacity_50
@docs bg_opacity_60
@docs bg_opacity_70
@docs bg_opacity_75
@docs bg_opacity_80
@docs bg_opacity_90
@docs bg_opacity_95
@docs bg_orange_100
@docs bg_orange_200
@docs bg_orange_300
@docs bg_orange_400
@docs bg_orange_500
@docs bg_orange_600
@docs bg_orange_700
@docs bg_orange_800
@docs bg_orange_900
@docs bg_pink_100
@docs bg_pink_200
@docs bg_pink_300
@docs bg_pink_400
@docs bg_pink_500
@docs bg_pink_600
@docs bg_pink_700
@docs bg_pink_800
@docs bg_pink_900
@docs bg_purple_100
@docs bg_purple_200
@docs bg_purple_300
@docs bg_purple_400
@docs bg_purple_500
@docs bg_purple_600
@docs bg_purple_700
@docs bg_purple_800
@docs bg_purple_900
@docs bg_red_100
@docs bg_red_200
@docs bg_red_300
@docs bg_red_400
@docs bg_red_500
@docs bg_red_600
@docs bg_red_700
@docs bg_red_800
@docs bg_red_900
@docs bg_repeat
@docs bg_repeat_round
@docs bg_repeat_space
@docs bg_repeat_x
@docs bg_repeat_y
@docs bg_right
@docs bg_right_bottom
@docs bg_right_top
@docs bg_scroll
@docs bg_teal_100
@docs bg_teal_200
@docs bg_teal_300
@docs bg_teal_400
@docs bg_teal_500
@docs bg_teal_600
@docs bg_teal_700
@docs bg_teal_800
@docs bg_teal_900
@docs bg_top
@docs bg_transparent
@docs bg_white
@docs bg_yellow_100
@docs bg_yellow_200
@docs bg_yellow_300
@docs bg_yellow_400
@docs bg_yellow_500
@docs bg_yellow_600
@docs bg_yellow_700
@docs bg_yellow_800
@docs bg_yellow_900
@docs block
@docs blur
@docs blur_0
@docs blur_2xl
@docs blur_3xl
@docs blur_lg
@docs blur_md
@docs blur_sm
@docs blur_xl
@docs border
@docs border_0
@docs border_2
@docs border_4
@docs border_8
@docs border_b
@docs border_b_0
@docs border_b_2
@docs border_b_4
@docs border_b_8
@docs border_black
@docs border_blue_100
@docs border_blue_200
@docs border_blue_300
@docs border_blue_400
@docs border_blue_500
@docs border_blue_600
@docs border_blue_700
@docs border_blue_800
@docs border_blue_900
@docs border_collapse
@docs border_current
@docs border_dashed
@docs border_dotted
@docs border_double
@docs border_gray_100
@docs border_gray_200
@docs border_gray_300
@docs border_gray_400
@docs border_gray_500
@docs border_gray_600
@docs border_gray_700
@docs border_gray_800
@docs border_gray_900
@docs border_green_100
@docs border_green_200
@docs border_green_300
@docs border_green_400
@docs border_green_500
@docs border_green_600
@docs border_green_700
@docs border_green_800
@docs border_green_900
@docs border_indigo_100
@docs border_indigo_200
@docs border_indigo_300
@docs border_indigo_400
@docs border_indigo_500
@docs border_indigo_600
@docs border_indigo_700
@docs border_indigo_800
@docs border_indigo_900
@docs border_l
@docs border_l_0
@docs border_l_2
@docs border_l_4
@docs border_l_8
@docs border_none
@docs border_opacity_0
@docs border_opacity_10
@docs border_opacity_100
@docs border_opacity_20
@docs border_opacity_25
@docs border_opacity_30
@docs border_opacity_40
@docs border_opacity_5
@docs border_opacity_50
@docs border_opacity_60
@docs border_opacity_70
@docs border_opacity_75
@docs border_opacity_80
@docs border_opacity_90
@docs border_opacity_95
@docs border_orange_100
@docs border_orange_200
@docs border_orange_300
@docs border_orange_400
@docs border_orange_500
@docs border_orange_600
@docs border_orange_700
@docs border_orange_800
@docs border_orange_900
@docs border_pink_100
@docs border_pink_200
@docs border_pink_300
@docs border_pink_400
@docs border_pink_500
@docs border_pink_600
@docs border_pink_700
@docs border_pink_800
@docs border_pink_900
@docs border_purple_100
@docs border_purple_200
@docs border_purple_300
@docs border_purple_400
@docs border_purple_500
@docs border_purple_600
@docs border_purple_700
@docs border_purple_800
@docs border_purple_900
@docs border_r
@docs border_r_0
@docs border_r_2
@docs border_r_4
@docs border_r_8
@docs border_red_100
@docs border_red_200
@docs border_red_300
@docs border_red_400
@docs border_red_500
@docs border_red_600
@docs border_red_700
@docs border_red_800
@docs border_red_900
@docs border_separate
@docs border_solid
@docs border_t
@docs border_t_0
@docs border_t_2
@docs border_t_4
@docs border_t_8
@docs border_teal_100
@docs border_teal_200
@docs border_teal_300
@docs border_teal_400
@docs border_teal_500
@docs border_teal_600
@docs border_teal_700
@docs border_teal_800
@docs border_teal_900
@docs border_transparent
@docs border_white
@docs border_yellow_100
@docs border_yellow_200
@docs border_yellow_300
@docs border_yellow_400
@docs border_yellow_500
@docs border_yellow_600
@docs border_yellow_700
@docs border_yellow_800
@docs border_yellow_900
@docs bottom_0
@docs bottom_0_dot_5
@docs bottom_1
@docs bottom_10
@docs bottom_11
@docs bottom_12
@docs bottom_14
@docs bottom_16
@docs bottom_1_dot_5
@docs bottom_1over2
@docs bottom_1over3
@docs bottom_1over4
@docs bottom_2
@docs bottom_20
@docs bottom_24
@docs bottom_28
@docs bottom_2_dot_5
@docs bottom_2over3
@docs bottom_2over4
@docs bottom_3
@docs bottom_32
@docs bottom_36
@docs bottom_3_dot_5
@docs bottom_3over4
@docs bottom_4
@docs bottom_40
@docs bottom_44
@docs bottom_48
@docs bottom_5
@docs bottom_52
@docs bottom_56
@docs bottom_6
@docs bottom_60
@docs bottom_64
@docs bottom_7
@docs bottom_72
@docs bottom_8
@docs bottom_80
@docs bottom_9
@docs bottom_96
@docs bottom_auto
@docs bottom_full
@docs bottom_px
@docs box_border
@docs box_content
@docs break_all
@docs break_normal
@docs break_words
@docs brightness_0
@docs brightness_100
@docs brightness_105
@docs brightness_110
@docs brightness_125
@docs brightness_150
@docs brightness_200
@docs brightness_50
@docs brightness_75
@docs brightness_90
@docs brightness_95
@docs capitalize
@docs clear_both
@docs clear_left
@docs clear_none
@docs clear_right
@docs col_auto
@docs col_end_1
@docs col_end_10
@docs col_end_11
@docs col_end_12
@docs col_end_13
@docs col_end_2
@docs col_end_3
@docs col_end_4
@docs col_end_5
@docs col_end_6
@docs col_end_7
@docs col_end_8
@docs col_end_9
@docs col_end_auto
@docs col_span_1
@docs col_span_10
@docs col_span_11
@docs col_span_12
@docs col_span_2
@docs col_span_3
@docs col_span_4
@docs col_span_5
@docs col_span_6
@docs col_span_7
@docs col_span_8
@docs col_span_9
@docs col_span_full
@docs col_start_1
@docs col_start_10
@docs col_start_11
@docs col_start_12
@docs col_start_13
@docs col_start_2
@docs col_start_3
@docs col_start_4
@docs col_start_5
@docs col_start_6
@docs col_start_7
@docs col_start_8
@docs col_start_9
@docs col_start_auto
@docs container
@docs content_around
@docs content_between
@docs content_center
@docs content_end
@docs content_evenly
@docs content_start
@docs contents
@docs contrast_0
@docs contrast_100
@docs contrast_125
@docs contrast_150
@docs contrast_200
@docs contrast_50
@docs contrast_75
@docs cursor_auto
@docs cursor_default
@docs cursor_help
@docs cursor_move
@docs cursor_not_allowed
@docs cursor_pointer
@docs cursor_text
@docs cursor_wait
@docs decoration_clone
@docs decoration_slice
@docs delay_100
@docs delay_1000
@docs delay_150
@docs delay_200
@docs delay_300
@docs delay_500
@docs delay_700
@docs delay_75
@docs diagonal_fractions
@docs divide_black
@docs divide_blue_100
@docs divide_blue_200
@docs divide_blue_300
@docs divide_blue_400
@docs divide_blue_500
@docs divide_blue_600
@docs divide_blue_700
@docs divide_blue_800
@docs divide_blue_900
@docs divide_current
@docs divide_dashed
@docs divide_dotted
@docs divide_double
@docs divide_gray_100
@docs divide_gray_200
@docs divide_gray_300
@docs divide_gray_400
@docs divide_gray_500
@docs divide_gray_600
@docs divide_gray_700
@docs divide_gray_800
@docs divide_gray_900
@docs divide_green_100
@docs divide_green_200
@docs divide_green_300
@docs divide_green_400
@docs divide_green_500
@docs divide_green_600
@docs divide_green_700
@docs divide_green_800
@docs divide_green_900
@docs divide_indigo_100
@docs divide_indigo_200
@docs divide_indigo_300
@docs divide_indigo_400
@docs divide_indigo_500
@docs divide_indigo_600
@docs divide_indigo_700
@docs divide_indigo_800
@docs divide_indigo_900
@docs divide_none
@docs divide_opacity_0
@docs divide_opacity_10
@docs divide_opacity_100
@docs divide_opacity_20
@docs divide_opacity_25
@docs divide_opacity_30
@docs divide_opacity_40
@docs divide_opacity_5
@docs divide_opacity_50
@docs divide_opacity_60
@docs divide_opacity_70
@docs divide_opacity_75
@docs divide_opacity_80
@docs divide_opacity_90
@docs divide_opacity_95
@docs divide_orange_100
@docs divide_orange_200
@docs divide_orange_300
@docs divide_orange_400
@docs divide_orange_500
@docs divide_orange_600
@docs divide_orange_700
@docs divide_orange_800
@docs divide_orange_900
@docs divide_pink_100
@docs divide_pink_200
@docs divide_pink_300
@docs divide_pink_400
@docs divide_pink_500
@docs divide_pink_600
@docs divide_pink_700
@docs divide_pink_800
@docs divide_pink_900
@docs divide_purple_100
@docs divide_purple_200
@docs divide_purple_300
@docs divide_purple_400
@docs divide_purple_500
@docs divide_purple_600
@docs divide_purple_700
@docs divide_purple_800
@docs divide_purple_900
@docs divide_red_100
@docs divide_red_200
@docs divide_red_300
@docs divide_red_400
@docs divide_red_500
@docs divide_red_600
@docs divide_red_700
@docs divide_red_800
@docs divide_red_900
@docs divide_solid
@docs divide_teal_100
@docs divide_teal_200
@docs divide_teal_300
@docs divide_teal_400
@docs divide_teal_500
@docs divide_teal_600
@docs divide_teal_700
@docs divide_teal_800
@docs divide_teal_900
@docs divide_transparent
@docs divide_white
@docs divide_x
@docs divide_x_0
@docs divide_x_2
@docs divide_x_4
@docs divide_x_8
@docs divide_x_reverse
@docs divide_y
@docs divide_y_0
@docs divide_y_2
@docs divide_y_4
@docs divide_y_8
@docs divide_y_reverse
@docs divide_yellow_100
@docs divide_yellow_200
@docs divide_yellow_300
@docs divide_yellow_400
@docs divide_yellow_500
@docs divide_yellow_600
@docs divide_yellow_700
@docs divide_yellow_800
@docs divide_yellow_900
@docs drop_shadow
@docs drop_shadow_2xl
@docs drop_shadow_lg
@docs drop_shadow_md
@docs drop_shadow_none
@docs drop_shadow_sm
@docs drop_shadow_xl
@docs duration_100
@docs duration_1000
@docs duration_150
@docs duration_200
@docs duration_300
@docs duration_500
@docs duration_700
@docs duration_75
@docs ease_in
@docs ease_in_out
@docs ease_linear
@docs ease_out
@docs fill_current
@docs filter
@docs filter_none
@docs fixed
@docs flex
@docs flex_1
@docs flex_auto
@docs flex_col
@docs flex_col_reverse
@docs flex_grow
@docs flex_grow_0
@docs flex_initial
@docs flex_none
@docs flex_nowrap
@docs flex_row
@docs flex_row_reverse
@docs flex_shrink
@docs flex_shrink_0
@docs flex_wrap
@docs flex_wrap_reverse
@docs float_left
@docs float_none
@docs float_right
@docs flow_root
@docs font_black
@docs font_bold
@docs font_extrabold
@docs font_extralight
@docs font_light
@docs font_medium
@docs font_mono
@docs font_normal
@docs font_sans
@docs font_semibold
@docs font_serif
@docs font_thin
@docs font_title
@docs from_black
@docs from_blue_100
@docs from_blue_200
@docs from_blue_300
@docs from_blue_400
@docs from_blue_500
@docs from_blue_600
@docs from_blue_700
@docs from_blue_800
@docs from_blue_900
@docs from_current
@docs from_gray_100
@docs from_gray_200
@docs from_gray_300
@docs from_gray_400
@docs from_gray_500
@docs from_gray_600
@docs from_gray_700
@docs from_gray_800
@docs from_gray_900
@docs from_green_100
@docs from_green_200
@docs from_green_300
@docs from_green_400
@docs from_green_500
@docs from_green_600
@docs from_green_700
@docs from_green_800
@docs from_green_900
@docs from_indigo_100
@docs from_indigo_200
@docs from_indigo_300
@docs from_indigo_400
@docs from_indigo_500
@docs from_indigo_600
@docs from_indigo_700
@docs from_indigo_800
@docs from_indigo_900
@docs from_orange_100
@docs from_orange_200
@docs from_orange_300
@docs from_orange_400
@docs from_orange_500
@docs from_orange_600
@docs from_orange_700
@docs from_orange_800
@docs from_orange_900
@docs from_pink_100
@docs from_pink_200
@docs from_pink_300
@docs from_pink_400
@docs from_pink_500
@docs from_pink_600
@docs from_pink_700
@docs from_pink_800
@docs from_pink_900
@docs from_purple_100
@docs from_purple_200
@docs from_purple_300
@docs from_purple_400
@docs from_purple_500
@docs from_purple_600
@docs from_purple_700
@docs from_purple_800
@docs from_purple_900
@docs from_red_100
@docs from_red_200
@docs from_red_300
@docs from_red_400
@docs from_red_500
@docs from_red_600
@docs from_red_700
@docs from_red_800
@docs from_red_900
@docs from_teal_100
@docs from_teal_200
@docs from_teal_300
@docs from_teal_400
@docs from_teal_500
@docs from_teal_600
@docs from_teal_700
@docs from_teal_800
@docs from_teal_900
@docs from_transparent
@docs from_white
@docs from_yellow_100
@docs from_yellow_200
@docs from_yellow_300
@docs from_yellow_400
@docs from_yellow_500
@docs from_yellow_600
@docs from_yellow_700
@docs from_yellow_800
@docs from_yellow_900
@docs gap_0
@docs gap_0_dot_5
@docs gap_1
@docs gap_10
@docs gap_11
@docs gap_12
@docs gap_14
@docs gap_16
@docs gap_1_dot_5
@docs gap_2
@docs gap_20
@docs gap_24
@docs gap_28
@docs gap_2_dot_5
@docs gap_3
@docs gap_32
@docs gap_36
@docs gap_3_dot_5
@docs gap_4
@docs gap_40
@docs gap_44
@docs gap_48
@docs gap_5
@docs gap_52
@docs gap_56
@docs gap_6
@docs gap_60
@docs gap_64
@docs gap_7
@docs gap_72
@docs gap_8
@docs gap_80
@docs gap_9
@docs gap_96
@docs gap_px
@docs gap_x_0
@docs gap_x_0_dot_5
@docs gap_x_1
@docs gap_x_10
@docs gap_x_11
@docs gap_x_12
@docs gap_x_14
@docs gap_x_16
@docs gap_x_1_dot_5
@docs gap_x_2
@docs gap_x_20
@docs gap_x_24
@docs gap_x_28
@docs gap_x_2_dot_5
@docs gap_x_3
@docs gap_x_32
@docs gap_x_36
@docs gap_x_3_dot_5
@docs gap_x_4
@docs gap_x_40
@docs gap_x_44
@docs gap_x_48
@docs gap_x_5
@docs gap_x_52
@docs gap_x_56
@docs gap_x_6
@docs gap_x_60
@docs gap_x_64
@docs gap_x_7
@docs gap_x_72
@docs gap_x_8
@docs gap_x_80
@docs gap_x_9
@docs gap_x_96
@docs gap_x_px
@docs gap_y_0
@docs gap_y_0_dot_5
@docs gap_y_1
@docs gap_y_10
@docs gap_y_11
@docs gap_y_12
@docs gap_y_14
@docs gap_y_16
@docs gap_y_1_dot_5
@docs gap_y_2
@docs gap_y_20
@docs gap_y_24
@docs gap_y_28
@docs gap_y_2_dot_5
@docs gap_y_3
@docs gap_y_32
@docs gap_y_36
@docs gap_y_3_dot_5
@docs gap_y_4
@docs gap_y_40
@docs gap_y_44
@docs gap_y_48
@docs gap_y_5
@docs gap_y_52
@docs gap_y_56
@docs gap_y_6
@docs gap_y_60
@docs gap_y_64
@docs gap_y_7
@docs gap_y_72
@docs gap_y_8
@docs gap_y_80
@docs gap_y_9
@docs gap_y_96
@docs gap_y_px
@docs grayscale
@docs grayscale_0
@docs grid
@docs grid_cols_1
@docs grid_cols_10
@docs grid_cols_11
@docs grid_cols_12
@docs grid_cols_2
@docs grid_cols_3
@docs grid_cols_4
@docs grid_cols_5
@docs grid_cols_6
@docs grid_cols_7
@docs grid_cols_8
@docs grid_cols_9
@docs grid_cols_none
@docs grid_flow_col
@docs grid_flow_col_dense
@docs grid_flow_row
@docs grid_flow_row_dense
@docs grid_rows_1
@docs grid_rows_2
@docs grid_rows_3
@docs grid_rows_4
@docs grid_rows_5
@docs grid_rows_6
@docs grid_rows_none
@docs h_0
@docs h_0_dot_5
@docs h_1
@docs h_10
@docs h_11
@docs h_12
@docs h_14
@docs h_16
@docs h_1_dot_5
@docs h_1over2
@docs h_1over3
@docs h_1over4
@docs h_1over5
@docs h_1over6
@docs h_2
@docs h_20
@docs h_24
@docs h_28
@docs h_2_dot_5
@docs h_2over3
@docs h_2over4
@docs h_2over5
@docs h_2over6
@docs h_3
@docs h_32
@docs h_36
@docs h_3_dot_5
@docs h_3over4
@docs h_3over5
@docs h_3over6
@docs h_4
@docs h_40
@docs h_44
@docs h_48
@docs h_4over5
@docs h_4over6
@docs h_5
@docs h_52
@docs h_56
@docs h_5over6
@docs h_6
@docs h_60
@docs h_64
@docs h_7
@docs h_72
@docs h_8
@docs h_80
@docs h_9
@docs h_96
@docs h_auto
@docs h_full
@docs h_px
@docs h_screen
@docs hidden
@docs hue_rotate_0
@docs hue_rotate_15
@docs hue_rotate_180
@docs hue_rotate_30
@docs hue_rotate_60
@docs hue_rotate_90
@docs inline
@docs inline_block
@docs inline_flex
@docs inline_grid
@docs inline_table
@docs inset_0
@docs inset_0_dot_5
@docs inset_1
@docs inset_10
@docs inset_11
@docs inset_12
@docs inset_14
@docs inset_16
@docs inset_1_dot_5
@docs inset_1over2
@docs inset_1over3
@docs inset_1over4
@docs inset_2
@docs inset_20
@docs inset_24
@docs inset_28
@docs inset_2_dot_5
@docs inset_2over3
@docs inset_2over4
@docs inset_3
@docs inset_32
@docs inset_36
@docs inset_3_dot_5
@docs inset_3over4
@docs inset_4
@docs inset_40
@docs inset_44
@docs inset_48
@docs inset_5
@docs inset_52
@docs inset_56
@docs inset_6
@docs inset_60
@docs inset_64
@docs inset_7
@docs inset_72
@docs inset_8
@docs inset_80
@docs inset_9
@docs inset_96
@docs inset_auto
@docs inset_full
@docs inset_px
@docs inset_x_0
@docs inset_x_0_dot_5
@docs inset_x_1
@docs inset_x_10
@docs inset_x_11
@docs inset_x_12
@docs inset_x_14
@docs inset_x_16
@docs inset_x_1_dot_5
@docs inset_x_1over2
@docs inset_x_1over3
@docs inset_x_1over4
@docs inset_x_2
@docs inset_x_20
@docs inset_x_24
@docs inset_x_28
@docs inset_x_2_dot_5
@docs inset_x_2over3
@docs inset_x_2over4
@docs inset_x_3
@docs inset_x_32
@docs inset_x_36
@docs inset_x_3_dot_5
@docs inset_x_3over4
@docs inset_x_4
@docs inset_x_40
@docs inset_x_44
@docs inset_x_48
@docs inset_x_5
@docs inset_x_52
@docs inset_x_56
@docs inset_x_6
@docs inset_x_60
@docs inset_x_64
@docs inset_x_7
@docs inset_x_72
@docs inset_x_8
@docs inset_x_80
@docs inset_x_9
@docs inset_x_96
@docs inset_x_auto
@docs inset_x_full
@docs inset_x_px
@docs inset_y_0
@docs inset_y_0_dot_5
@docs inset_y_1
@docs inset_y_10
@docs inset_y_11
@docs inset_y_12
@docs inset_y_14
@docs inset_y_16
@docs inset_y_1_dot_5
@docs inset_y_1over2
@docs inset_y_1over3
@docs inset_y_1over4
@docs inset_y_2
@docs inset_y_20
@docs inset_y_24
@docs inset_y_28
@docs inset_y_2_dot_5
@docs inset_y_2over3
@docs inset_y_2over4
@docs inset_y_3
@docs inset_y_32
@docs inset_y_36
@docs inset_y_3_dot_5
@docs inset_y_3over4
@docs inset_y_4
@docs inset_y_40
@docs inset_y_44
@docs inset_y_48
@docs inset_y_5
@docs inset_y_52
@docs inset_y_56
@docs inset_y_6
@docs inset_y_60
@docs inset_y_64
@docs inset_y_7
@docs inset_y_72
@docs inset_y_8
@docs inset_y_80
@docs inset_y_9
@docs inset_y_96
@docs inset_y_auto
@docs inset_y_full
@docs inset_y_px
@docs invert
@docs invert_0
@docs invisible
@docs isolate
@docs isolation_auto
@docs italic
@docs items_baseline
@docs items_center
@docs items_end
@docs items_start
@docs items_stretch
@docs justify_around
@docs justify_between
@docs justify_center
@docs justify_end
@docs justify_evenly
@docs justify_items_center
@docs justify_items_end
@docs justify_items_start
@docs justify_items_stretch
@docs justify_self_auto
@docs justify_self_center
@docs justify_self_end
@docs justify_self_start
@docs justify_self_stretch
@docs justify_start
@docs leading_10
@docs leading_3
@docs leading_4
@docs leading_5
@docs leading_6
@docs leading_7
@docs leading_8
@docs leading_9
@docs leading_loose
@docs leading_none
@docs leading_normal
@docs leading_relaxed
@docs leading_snug
@docs leading_tight
@docs left_0
@docs left_0_dot_5
@docs left_1
@docs left_10
@docs left_11
@docs left_12
@docs left_14
@docs left_16
@docs left_1_dot_5
@docs left_1over2
@docs left_1over3
@docs left_1over4
@docs left_2
@docs left_20
@docs left_24
@docs left_28
@docs left_2_dot_5
@docs left_2over3
@docs left_2over4
@docs left_3
@docs left_32
@docs left_36
@docs left_3_dot_5
@docs left_3over4
@docs left_4
@docs left_40
@docs left_44
@docs left_48
@docs left_5
@docs left_52
@docs left_56
@docs left_6
@docs left_60
@docs left_64
@docs left_7
@docs left_72
@docs left_8
@docs left_80
@docs left_9
@docs left_96
@docs left_auto
@docs left_full
@docs left_px
@docs line_through
@docs lining_nums
@docs list_decimal
@docs list_disc
@docs list_inside
@docs list_item
@docs list_none
@docs list_outside
@docs lowercase
@docs m_0
@docs m_0_dot_5
@docs m_1
@docs m_10
@docs m_11
@docs m_12
@docs m_14
@docs m_16
@docs m_1_dot_5
@docs m_2
@docs m_20
@docs m_24
@docs m_28
@docs m_2_dot_5
@docs m_3
@docs m_32
@docs m_36
@docs m_3_dot_5
@docs m_4
@docs m_40
@docs m_44
@docs m_48
@docs m_5
@docs m_52
@docs m_56
@docs m_6
@docs m_60
@docs m_64
@docs m_7
@docs m_72
@docs m_8
@docs m_80
@docs m_9
@docs m_96
@docs m_auto
@docs m_px
@docs max_h_0
@docs max_h_0_dot_5
@docs max_h_1
@docs max_h_10
@docs max_h_11
@docs max_h_12
@docs max_h_14
@docs max_h_16
@docs max_h_1_dot_5
@docs max_h_2
@docs max_h_20
@docs max_h_24
@docs max_h_28
@docs max_h_2_dot_5
@docs max_h_3
@docs max_h_32
@docs max_h_36
@docs max_h_3_dot_5
@docs max_h_4
@docs max_h_40
@docs max_h_44
@docs max_h_48
@docs max_h_5
@docs max_h_52
@docs max_h_56
@docs max_h_6
@docs max_h_60
@docs max_h_64
@docs max_h_7
@docs max_h_72
@docs max_h_8
@docs max_h_80
@docs max_h_9
@docs max_h_96
@docs max_h_full
@docs max_h_px
@docs max_h_screen
@docs max_w_0
@docs max_w_2xl
@docs max_w_3xl
@docs max_w_4xl
@docs max_w_5xl
@docs max_w_6xl
@docs max_w_7xl
@docs max_w_full
@docs max_w_lg
@docs max_w_max
@docs max_w_md
@docs max_w_min
@docs max_w_none
@docs max_w_prose
@docs max_w_screen_2xl
@docs max_w_screen_lg
@docs max_w_screen_md
@docs max_w_screen_sm
@docs max_w_screen_xl
@docs max_w_sm
@docs max_w_xl
@docs max_w_xs
@docs mb_0
@docs mb_0_dot_5
@docs mb_1
@docs mb_10
@docs mb_11
@docs mb_12
@docs mb_14
@docs mb_16
@docs mb_1_dot_5
@docs mb_2
@docs mb_20
@docs mb_24
@docs mb_28
@docs mb_2_dot_5
@docs mb_3
@docs mb_32
@docs mb_36
@docs mb_3_dot_5
@docs mb_4
@docs mb_40
@docs mb_44
@docs mb_48
@docs mb_5
@docs mb_52
@docs mb_56
@docs mb_6
@docs mb_60
@docs mb_64
@docs mb_7
@docs mb_72
@docs mb_8
@docs mb_80
@docs mb_9
@docs mb_96
@docs mb_auto
@docs mb_px
@docs min_h_0
@docs min_h_full
@docs min_h_screen
@docs min_w_0
@docs min_w_full
@docs min_w_max
@docs min_w_min
@docs mix_blend_color
@docs mix_blend_color_burn
@docs mix_blend_color_dodge
@docs mix_blend_darken
@docs mix_blend_difference
@docs mix_blend_exclusion
@docs mix_blend_hard_light
@docs mix_blend_hue
@docs mix_blend_lighten
@docs mix_blend_luminosity
@docs mix_blend_multiply
@docs mix_blend_normal
@docs mix_blend_overlay
@docs mix_blend_saturation
@docs mix_blend_screen
@docs mix_blend_soft_light
@docs ml_0
@docs ml_0_dot_5
@docs ml_1
@docs ml_10
@docs ml_11
@docs ml_12
@docs ml_14
@docs ml_16
@docs ml_1_dot_5
@docs ml_2
@docs ml_20
@docs ml_24
@docs ml_28
@docs ml_2_dot_5
@docs ml_3
@docs ml_32
@docs ml_36
@docs ml_3_dot_5
@docs ml_4
@docs ml_40
@docs ml_44
@docs ml_48
@docs ml_5
@docs ml_52
@docs ml_56
@docs ml_6
@docs ml_60
@docs ml_64
@docs ml_7
@docs ml_72
@docs ml_8
@docs ml_80
@docs ml_9
@docs ml_96
@docs ml_auto
@docs ml_px
@docs mr_0
@docs mr_0_dot_5
@docs mr_1
@docs mr_10
@docs mr_11
@docs mr_12
@docs mr_14
@docs mr_16
@docs mr_1_dot_5
@docs mr_2
@docs mr_20
@docs mr_24
@docs mr_28
@docs mr_2_dot_5
@docs mr_3
@docs mr_32
@docs mr_36
@docs mr_3_dot_5
@docs mr_4
@docs mr_40
@docs mr_44
@docs mr_48
@docs mr_5
@docs mr_52
@docs mr_56
@docs mr_6
@docs mr_60
@docs mr_64
@docs mr_7
@docs mr_72
@docs mr_8
@docs mr_80
@docs mr_9
@docs mr_96
@docs mr_auto
@docs mr_px
@docs mt_0
@docs mt_0_dot_5
@docs mt_1
@docs mt_10
@docs mt_11
@docs mt_12
@docs mt_14
@docs mt_16
@docs mt_1_dot_5
@docs mt_2
@docs mt_20
@docs mt_24
@docs mt_28
@docs mt_2_dot_5
@docs mt_3
@docs mt_32
@docs mt_36
@docs mt_3_dot_5
@docs mt_4
@docs mt_40
@docs mt_44
@docs mt_48
@docs mt_5
@docs mt_52
@docs mt_56
@docs mt_6
@docs mt_60
@docs mt_64
@docs mt_7
@docs mt_72
@docs mt_8
@docs mt_80
@docs mt_9
@docs mt_96
@docs mt_auto
@docs mt_px
@docs mx_0
@docs mx_0_dot_5
@docs mx_1
@docs mx_10
@docs mx_11
@docs mx_12
@docs mx_14
@docs mx_16
@docs mx_1_dot_5
@docs mx_2
@docs mx_20
@docs mx_24
@docs mx_28
@docs mx_2_dot_5
@docs mx_3
@docs mx_32
@docs mx_36
@docs mx_3_dot_5
@docs mx_4
@docs mx_40
@docs mx_44
@docs mx_48
@docs mx_5
@docs mx_52
@docs mx_56
@docs mx_6
@docs mx_60
@docs mx_64
@docs mx_7
@docs mx_72
@docs mx_8
@docs mx_80
@docs mx_9
@docs mx_96
@docs mx_auto
@docs mx_px
@docs my_0
@docs my_0_dot_5
@docs my_1
@docs my_10
@docs my_11
@docs my_12
@docs my_14
@docs my_16
@docs my_1_dot_5
@docs my_2
@docs my_20
@docs my_24
@docs my_28
@docs my_2_dot_5
@docs my_3
@docs my_32
@docs my_36
@docs my_3_dot_5
@docs my_4
@docs my_40
@docs my_44
@docs my_48
@docs my_5
@docs my_52
@docs my_56
@docs my_6
@docs my_60
@docs my_64
@docs my_7
@docs my_72
@docs my_8
@docs my_80
@docs my_9
@docs my_96
@docs my_auto
@docs my_px
@docs neg_backdrop_hue_rotate_15
@docs neg_backdrop_hue_rotate_180
@docs neg_backdrop_hue_rotate_30
@docs neg_backdrop_hue_rotate_60
@docs neg_backdrop_hue_rotate_90
@docs neg_bottom_0
@docs neg_bottom_0_dot_5
@docs neg_bottom_1
@docs neg_bottom_10
@docs neg_bottom_11
@docs neg_bottom_12
@docs neg_bottom_14
@docs neg_bottom_16
@docs neg_bottom_1_dot_5
@docs neg_bottom_1over2
@docs neg_bottom_1over3
@docs neg_bottom_1over4
@docs neg_bottom_2
@docs neg_bottom_20
@docs neg_bottom_24
@docs neg_bottom_28
@docs neg_bottom_2_dot_5
@docs neg_bottom_2over3
@docs neg_bottom_2over4
@docs neg_bottom_3
@docs neg_bottom_32
@docs neg_bottom_36
@docs neg_bottom_3_dot_5
@docs neg_bottom_3over4
@docs neg_bottom_4
@docs neg_bottom_40
@docs neg_bottom_44
@docs neg_bottom_48
@docs neg_bottom_5
@docs neg_bottom_52
@docs neg_bottom_56
@docs neg_bottom_6
@docs neg_bottom_60
@docs neg_bottom_64
@docs neg_bottom_7
@docs neg_bottom_72
@docs neg_bottom_8
@docs neg_bottom_80
@docs neg_bottom_9
@docs neg_bottom_96
@docs neg_bottom_full
@docs neg_bottom_px
@docs neg_hue_rotate_15
@docs neg_hue_rotate_180
@docs neg_hue_rotate_30
@docs neg_hue_rotate_60
@docs neg_hue_rotate_90
@docs neg_inset_0
@docs neg_inset_0_dot_5
@docs neg_inset_1
@docs neg_inset_10
@docs neg_inset_11
@docs neg_inset_12
@docs neg_inset_14
@docs neg_inset_16
@docs neg_inset_1_dot_5
@docs neg_inset_1over2
@docs neg_inset_1over3
@docs neg_inset_1over4
@docs neg_inset_2
@docs neg_inset_20
@docs neg_inset_24
@docs neg_inset_28
@docs neg_inset_2_dot_5
@docs neg_inset_2over3
@docs neg_inset_2over4
@docs neg_inset_3
@docs neg_inset_32
@docs neg_inset_36
@docs neg_inset_3_dot_5
@docs neg_inset_3over4
@docs neg_inset_4
@docs neg_inset_40
@docs neg_inset_44
@docs neg_inset_48
@docs neg_inset_5
@docs neg_inset_52
@docs neg_inset_56
@docs neg_inset_6
@docs neg_inset_60
@docs neg_inset_64
@docs neg_inset_7
@docs neg_inset_72
@docs neg_inset_8
@docs neg_inset_80
@docs neg_inset_9
@docs neg_inset_96
@docs neg_inset_full
@docs neg_inset_px
@docs neg_inset_x_0
@docs neg_inset_x_0_dot_5
@docs neg_inset_x_1
@docs neg_inset_x_10
@docs neg_inset_x_11
@docs neg_inset_x_12
@docs neg_inset_x_14
@docs neg_inset_x_16
@docs neg_inset_x_1_dot_5
@docs neg_inset_x_1over2
@docs neg_inset_x_1over3
@docs neg_inset_x_1over4
@docs neg_inset_x_2
@docs neg_inset_x_20
@docs neg_inset_x_24
@docs neg_inset_x_28
@docs neg_inset_x_2_dot_5
@docs neg_inset_x_2over3
@docs neg_inset_x_2over4
@docs neg_inset_x_3
@docs neg_inset_x_32
@docs neg_inset_x_36
@docs neg_inset_x_3_dot_5
@docs neg_inset_x_3over4
@docs neg_inset_x_4
@docs neg_inset_x_40
@docs neg_inset_x_44
@docs neg_inset_x_48
@docs neg_inset_x_5
@docs neg_inset_x_52
@docs neg_inset_x_56
@docs neg_inset_x_6
@docs neg_inset_x_60
@docs neg_inset_x_64
@docs neg_inset_x_7
@docs neg_inset_x_72
@docs neg_inset_x_8
@docs neg_inset_x_80
@docs neg_inset_x_9
@docs neg_inset_x_96
@docs neg_inset_x_full
@docs neg_inset_x_px
@docs neg_inset_y_0
@docs neg_inset_y_0_dot_5
@docs neg_inset_y_1
@docs neg_inset_y_10
@docs neg_inset_y_11
@docs neg_inset_y_12
@docs neg_inset_y_14
@docs neg_inset_y_16
@docs neg_inset_y_1_dot_5
@docs neg_inset_y_1over2
@docs neg_inset_y_1over3
@docs neg_inset_y_1over4
@docs neg_inset_y_2
@docs neg_inset_y_20
@docs neg_inset_y_24
@docs neg_inset_y_28
@docs neg_inset_y_2_dot_5
@docs neg_inset_y_2over3
@docs neg_inset_y_2over4
@docs neg_inset_y_3
@docs neg_inset_y_32
@docs neg_inset_y_36
@docs neg_inset_y_3_dot_5
@docs neg_inset_y_3over4
@docs neg_inset_y_4
@docs neg_inset_y_40
@docs neg_inset_y_44
@docs neg_inset_y_48
@docs neg_inset_y_5
@docs neg_inset_y_52
@docs neg_inset_y_56
@docs neg_inset_y_6
@docs neg_inset_y_60
@docs neg_inset_y_64
@docs neg_inset_y_7
@docs neg_inset_y_72
@docs neg_inset_y_8
@docs neg_inset_y_80
@docs neg_inset_y_9
@docs neg_inset_y_96
@docs neg_inset_y_full
@docs neg_inset_y_px
@docs neg_left_0
@docs neg_left_0_dot_5
@docs neg_left_1
@docs neg_left_10
@docs neg_left_11
@docs neg_left_12
@docs neg_left_14
@docs neg_left_16
@docs neg_left_1_dot_5
@docs neg_left_1over2
@docs neg_left_1over3
@docs neg_left_1over4
@docs neg_left_2
@docs neg_left_20
@docs neg_left_24
@docs neg_left_28
@docs neg_left_2_dot_5
@docs neg_left_2over3
@docs neg_left_2over4
@docs neg_left_3
@docs neg_left_32
@docs neg_left_36
@docs neg_left_3_dot_5
@docs neg_left_3over4
@docs neg_left_4
@docs neg_left_40
@docs neg_left_44
@docs neg_left_48
@docs neg_left_5
@docs neg_left_52
@docs neg_left_56
@docs neg_left_6
@docs neg_left_60
@docs neg_left_64
@docs neg_left_7
@docs neg_left_72
@docs neg_left_8
@docs neg_left_80
@docs neg_left_9
@docs neg_left_96
@docs neg_left_full
@docs neg_left_px
@docs neg_m_0
@docs neg_m_0_dot_5
@docs neg_m_1
@docs neg_m_10
@docs neg_m_11
@docs neg_m_12
@docs neg_m_14
@docs neg_m_16
@docs neg_m_1_dot_5
@docs neg_m_2
@docs neg_m_20
@docs neg_m_24
@docs neg_m_28
@docs neg_m_2_dot_5
@docs neg_m_3
@docs neg_m_32
@docs neg_m_36
@docs neg_m_3_dot_5
@docs neg_m_4
@docs neg_m_40
@docs neg_m_44
@docs neg_m_48
@docs neg_m_5
@docs neg_m_52
@docs neg_m_56
@docs neg_m_6
@docs neg_m_60
@docs neg_m_64
@docs neg_m_7
@docs neg_m_72
@docs neg_m_8
@docs neg_m_80
@docs neg_m_9
@docs neg_m_96
@docs neg_m_px
@docs neg_mb_0
@docs neg_mb_0_dot_5
@docs neg_mb_1
@docs neg_mb_10
@docs neg_mb_11
@docs neg_mb_12
@docs neg_mb_14
@docs neg_mb_16
@docs neg_mb_1_dot_5
@docs neg_mb_2
@docs neg_mb_20
@docs neg_mb_24
@docs neg_mb_28
@docs neg_mb_2_dot_5
@docs neg_mb_3
@docs neg_mb_32
@docs neg_mb_36
@docs neg_mb_3_dot_5
@docs neg_mb_4
@docs neg_mb_40
@docs neg_mb_44
@docs neg_mb_48
@docs neg_mb_5
@docs neg_mb_52
@docs neg_mb_56
@docs neg_mb_6
@docs neg_mb_60
@docs neg_mb_64
@docs neg_mb_7
@docs neg_mb_72
@docs neg_mb_8
@docs neg_mb_80
@docs neg_mb_9
@docs neg_mb_96
@docs neg_mb_px
@docs neg_ml_0
@docs neg_ml_0_dot_5
@docs neg_ml_1
@docs neg_ml_10
@docs neg_ml_11
@docs neg_ml_12
@docs neg_ml_14
@docs neg_ml_16
@docs neg_ml_1_dot_5
@docs neg_ml_2
@docs neg_ml_20
@docs neg_ml_24
@docs neg_ml_28
@docs neg_ml_2_dot_5
@docs neg_ml_3
@docs neg_ml_32
@docs neg_ml_36
@docs neg_ml_3_dot_5
@docs neg_ml_4
@docs neg_ml_40
@docs neg_ml_44
@docs neg_ml_48
@docs neg_ml_5
@docs neg_ml_52
@docs neg_ml_56
@docs neg_ml_6
@docs neg_ml_60
@docs neg_ml_64
@docs neg_ml_7
@docs neg_ml_72
@docs neg_ml_8
@docs neg_ml_80
@docs neg_ml_9
@docs neg_ml_96
@docs neg_ml_px
@docs neg_mr_0
@docs neg_mr_0_dot_5
@docs neg_mr_1
@docs neg_mr_10
@docs neg_mr_11
@docs neg_mr_12
@docs neg_mr_14
@docs neg_mr_16
@docs neg_mr_1_dot_5
@docs neg_mr_2
@docs neg_mr_20
@docs neg_mr_24
@docs neg_mr_28
@docs neg_mr_2_dot_5
@docs neg_mr_3
@docs neg_mr_32
@docs neg_mr_36
@docs neg_mr_3_dot_5
@docs neg_mr_4
@docs neg_mr_40
@docs neg_mr_44
@docs neg_mr_48
@docs neg_mr_5
@docs neg_mr_52
@docs neg_mr_56
@docs neg_mr_6
@docs neg_mr_60
@docs neg_mr_64
@docs neg_mr_7
@docs neg_mr_72
@docs neg_mr_8
@docs neg_mr_80
@docs neg_mr_9
@docs neg_mr_96
@docs neg_mr_px
@docs neg_mt_0
@docs neg_mt_0_dot_5
@docs neg_mt_1
@docs neg_mt_10
@docs neg_mt_11
@docs neg_mt_12
@docs neg_mt_14
@docs neg_mt_16
@docs neg_mt_1_dot_5
@docs neg_mt_2
@docs neg_mt_20
@docs neg_mt_24
@docs neg_mt_28
@docs neg_mt_2_dot_5
@docs neg_mt_3
@docs neg_mt_32
@docs neg_mt_36
@docs neg_mt_3_dot_5
@docs neg_mt_4
@docs neg_mt_40
@docs neg_mt_44
@docs neg_mt_48
@docs neg_mt_5
@docs neg_mt_52
@docs neg_mt_56
@docs neg_mt_6
@docs neg_mt_60
@docs neg_mt_64
@docs neg_mt_7
@docs neg_mt_72
@docs neg_mt_8
@docs neg_mt_80
@docs neg_mt_9
@docs neg_mt_96
@docs neg_mt_px
@docs neg_mx_0
@docs neg_mx_0_dot_5
@docs neg_mx_1
@docs neg_mx_10
@docs neg_mx_11
@docs neg_mx_12
@docs neg_mx_14
@docs neg_mx_16
@docs neg_mx_1_dot_5
@docs neg_mx_2
@docs neg_mx_20
@docs neg_mx_24
@docs neg_mx_28
@docs neg_mx_2_dot_5
@docs neg_mx_3
@docs neg_mx_32
@docs neg_mx_36
@docs neg_mx_3_dot_5
@docs neg_mx_4
@docs neg_mx_40
@docs neg_mx_44
@docs neg_mx_48
@docs neg_mx_5
@docs neg_mx_52
@docs neg_mx_56
@docs neg_mx_6
@docs neg_mx_60
@docs neg_mx_64
@docs neg_mx_7
@docs neg_mx_72
@docs neg_mx_8
@docs neg_mx_80
@docs neg_mx_9
@docs neg_mx_96
@docs neg_mx_px
@docs neg_my_0
@docs neg_my_0_dot_5
@docs neg_my_1
@docs neg_my_10
@docs neg_my_11
@docs neg_my_12
@docs neg_my_14
@docs neg_my_16
@docs neg_my_1_dot_5
@docs neg_my_2
@docs neg_my_20
@docs neg_my_24
@docs neg_my_28
@docs neg_my_2_dot_5
@docs neg_my_3
@docs neg_my_32
@docs neg_my_36
@docs neg_my_3_dot_5
@docs neg_my_4
@docs neg_my_40
@docs neg_my_44
@docs neg_my_48
@docs neg_my_5
@docs neg_my_52
@docs neg_my_56
@docs neg_my_6
@docs neg_my_60
@docs neg_my_64
@docs neg_my_7
@docs neg_my_72
@docs neg_my_8
@docs neg_my_80
@docs neg_my_9
@docs neg_my_96
@docs neg_my_px
@docs neg_right_0
@docs neg_right_0_dot_5
@docs neg_right_1
@docs neg_right_10
@docs neg_right_11
@docs neg_right_12
@docs neg_right_14
@docs neg_right_16
@docs neg_right_1_dot_5
@docs neg_right_1over2
@docs neg_right_1over3
@docs neg_right_1over4
@docs neg_right_2
@docs neg_right_20
@docs neg_right_24
@docs neg_right_28
@docs neg_right_2_dot_5
@docs neg_right_2over3
@docs neg_right_2over4
@docs neg_right_3
@docs neg_right_32
@docs neg_right_36
@docs neg_right_3_dot_5
@docs neg_right_3over4
@docs neg_right_4
@docs neg_right_40
@docs neg_right_44
@docs neg_right_48
@docs neg_right_5
@docs neg_right_52
@docs neg_right_56
@docs neg_right_6
@docs neg_right_60
@docs neg_right_64
@docs neg_right_7
@docs neg_right_72
@docs neg_right_8
@docs neg_right_80
@docs neg_right_9
@docs neg_right_96
@docs neg_right_full
@docs neg_right_px
@docs neg_rotate_1
@docs neg_rotate_12
@docs neg_rotate_180
@docs neg_rotate_2
@docs neg_rotate_3
@docs neg_rotate_45
@docs neg_rotate_6
@docs neg_rotate_90
@docs neg_skew_x_1
@docs neg_skew_x_12
@docs neg_skew_x_2
@docs neg_skew_x_3
@docs neg_skew_x_6
@docs neg_skew_y_1
@docs neg_skew_y_12
@docs neg_skew_y_2
@docs neg_skew_y_3
@docs neg_skew_y_6
@docs neg_space_x_0
@docs neg_space_x_0_dot_5
@docs neg_space_x_1
@docs neg_space_x_10
@docs neg_space_x_11
@docs neg_space_x_12
@docs neg_space_x_14
@docs neg_space_x_16
@docs neg_space_x_1_dot_5
@docs neg_space_x_2
@docs neg_space_x_20
@docs neg_space_x_24
@docs neg_space_x_28
@docs neg_space_x_2_dot_5
@docs neg_space_x_3
@docs neg_space_x_32
@docs neg_space_x_36
@docs neg_space_x_3_dot_5
@docs neg_space_x_4
@docs neg_space_x_40
@docs neg_space_x_44
@docs neg_space_x_48
@docs neg_space_x_5
@docs neg_space_x_52
@docs neg_space_x_56
@docs neg_space_x_6
@docs neg_space_x_60
@docs neg_space_x_64
@docs neg_space_x_7
@docs neg_space_x_72
@docs neg_space_x_8
@docs neg_space_x_80
@docs neg_space_x_9
@docs neg_space_x_96
@docs neg_space_x_px
@docs neg_space_y_0
@docs neg_space_y_0_dot_5
@docs neg_space_y_1
@docs neg_space_y_10
@docs neg_space_y_11
@docs neg_space_y_12
@docs neg_space_y_14
@docs neg_space_y_16
@docs neg_space_y_1_dot_5
@docs neg_space_y_2
@docs neg_space_y_20
@docs neg_space_y_24
@docs neg_space_y_28
@docs neg_space_y_2_dot_5
@docs neg_space_y_3
@docs neg_space_y_32
@docs neg_space_y_36
@docs neg_space_y_3_dot_5
@docs neg_space_y_4
@docs neg_space_y_40
@docs neg_space_y_44
@docs neg_space_y_48
@docs neg_space_y_5
@docs neg_space_y_52
@docs neg_space_y_56
@docs neg_space_y_6
@docs neg_space_y_60
@docs neg_space_y_64
@docs neg_space_y_7
@docs neg_space_y_72
@docs neg_space_y_8
@docs neg_space_y_80
@docs neg_space_y_9
@docs neg_space_y_96
@docs neg_space_y_px
@docs neg_top_0
@docs neg_top_0_dot_5
@docs neg_top_1
@docs neg_top_10
@docs neg_top_11
@docs neg_top_12
@docs neg_top_14
@docs neg_top_16
@docs neg_top_1_dot_5
@docs neg_top_1over2
@docs neg_top_1over3
@docs neg_top_1over4
@docs neg_top_2
@docs neg_top_20
@docs neg_top_24
@docs neg_top_28
@docs neg_top_2_dot_5
@docs neg_top_2over3
@docs neg_top_2over4
@docs neg_top_3
@docs neg_top_32
@docs neg_top_36
@docs neg_top_3_dot_5
@docs neg_top_3over4
@docs neg_top_4
@docs neg_top_40
@docs neg_top_44
@docs neg_top_48
@docs neg_top_5
@docs neg_top_52
@docs neg_top_56
@docs neg_top_6
@docs neg_top_60
@docs neg_top_64
@docs neg_top_7
@docs neg_top_72
@docs neg_top_8
@docs neg_top_80
@docs neg_top_9
@docs neg_top_96
@docs neg_top_full
@docs neg_top_px
@docs neg_translate_x_0
@docs neg_translate_x_0_dot_5
@docs neg_translate_x_1
@docs neg_translate_x_10
@docs neg_translate_x_11
@docs neg_translate_x_12
@docs neg_translate_x_14
@docs neg_translate_x_16
@docs neg_translate_x_1_dot_5
@docs neg_translate_x_1over2
@docs neg_translate_x_1over3
@docs neg_translate_x_1over4
@docs neg_translate_x_2
@docs neg_translate_x_20
@docs neg_translate_x_24
@docs neg_translate_x_28
@docs neg_translate_x_2_dot_5
@docs neg_translate_x_2over3
@docs neg_translate_x_2over4
@docs neg_translate_x_3
@docs neg_translate_x_32
@docs neg_translate_x_36
@docs neg_translate_x_3_dot_5
@docs neg_translate_x_3over4
@docs neg_translate_x_4
@docs neg_translate_x_40
@docs neg_translate_x_44
@docs neg_translate_x_48
@docs neg_translate_x_5
@docs neg_translate_x_52
@docs neg_translate_x_56
@docs neg_translate_x_6
@docs neg_translate_x_60
@docs neg_translate_x_64
@docs neg_translate_x_7
@docs neg_translate_x_72
@docs neg_translate_x_8
@docs neg_translate_x_80
@docs neg_translate_x_9
@docs neg_translate_x_96
@docs neg_translate_x_full
@docs neg_translate_x_px
@docs neg_translate_y_0
@docs neg_translate_y_0_dot_5
@docs neg_translate_y_1
@docs neg_translate_y_10
@docs neg_translate_y_11
@docs neg_translate_y_12
@docs neg_translate_y_14
@docs neg_translate_y_16
@docs neg_translate_y_1_dot_5
@docs neg_translate_y_1over2
@docs neg_translate_y_1over3
@docs neg_translate_y_1over4
@docs neg_translate_y_2
@docs neg_translate_y_20
@docs neg_translate_y_24
@docs neg_translate_y_28
@docs neg_translate_y_2_dot_5
@docs neg_translate_y_2over3
@docs neg_translate_y_2over4
@docs neg_translate_y_3
@docs neg_translate_y_32
@docs neg_translate_y_36
@docs neg_translate_y_3_dot_5
@docs neg_translate_y_3over4
@docs neg_translate_y_4
@docs neg_translate_y_40
@docs neg_translate_y_44
@docs neg_translate_y_48
@docs neg_translate_y_5
@docs neg_translate_y_52
@docs neg_translate_y_56
@docs neg_translate_y_6
@docs neg_translate_y_60
@docs neg_translate_y_64
@docs neg_translate_y_7
@docs neg_translate_y_72
@docs neg_translate_y_8
@docs neg_translate_y_80
@docs neg_translate_y_9
@docs neg_translate_y_96
@docs neg_translate_y_full
@docs neg_translate_y_px
@docs no_underline
@docs normal_case
@docs normal_nums
@docs not_italic
@docs not_sr_only
@docs object_bottom
@docs object_center
@docs object_contain
@docs object_cover
@docs object_fill
@docs object_left
@docs object_left_bottom
@docs object_left_top
@docs object_none
@docs object_right
@docs object_right_bottom
@docs object_right_top
@docs object_scale_down
@docs object_top
@docs oldstyle_nums
@docs opacity_0
@docs opacity_10
@docs opacity_100
@docs opacity_20
@docs opacity_25
@docs opacity_30
@docs opacity_40
@docs opacity_5
@docs opacity_50
@docs opacity_60
@docs opacity_70
@docs opacity_75
@docs opacity_80
@docs opacity_90
@docs opacity_95
@docs order_1
@docs order_10
@docs order_11
@docs order_12
@docs order_2
@docs order_3
@docs order_4
@docs order_5
@docs order_6
@docs order_7
@docs order_8
@docs order_9
@docs order_first
@docs order_last
@docs order_none
@docs ordinal
@docs origin_bottom
@docs origin_bottom_left
@docs origin_bottom_right
@docs origin_center
@docs origin_left
@docs origin_right
@docs origin_top
@docs origin_top_left
@docs origin_top_right
@docs outline_black
@docs outline_none
@docs outline_white
@docs overflow_auto
@docs overflow_clip
@docs overflow_ellipsis
@docs overflow_hidden
@docs overflow_scroll
@docs overflow_visible
@docs overflow_x_auto
@docs overflow_x_hidden
@docs overflow_x_scroll
@docs overflow_x_visible
@docs overflow_y_auto
@docs overflow_y_hidden
@docs overflow_y_scroll
@docs overflow_y_visible
@docs overscroll_auto
@docs overscroll_contain
@docs overscroll_none
@docs overscroll_x_auto
@docs overscroll_x_contain
@docs overscroll_x_none
@docs overscroll_y_auto
@docs overscroll_y_contain
@docs overscroll_y_none
@docs p_0
@docs p_0_dot_5
@docs p_1
@docs p_10
@docs p_11
@docs p_12
@docs p_14
@docs p_16
@docs p_1_dot_5
@docs p_2
@docs p_20
@docs p_24
@docs p_28
@docs p_2_dot_5
@docs p_3
@docs p_32
@docs p_36
@docs p_3_dot_5
@docs p_4
@docs p_40
@docs p_44
@docs p_48
@docs p_5
@docs p_52
@docs p_56
@docs p_6
@docs p_60
@docs p_64
@docs p_7
@docs p_72
@docs p_8
@docs p_80
@docs p_9
@docs p_96
@docs p_px
@docs pb_0
@docs pb_0_dot_5
@docs pb_1
@docs pb_10
@docs pb_11
@docs pb_12
@docs pb_14
@docs pb_16
@docs pb_1_dot_5
@docs pb_2
@docs pb_20
@docs pb_24
@docs pb_28
@docs pb_2_dot_5
@docs pb_3
@docs pb_32
@docs pb_36
@docs pb_3_dot_5
@docs pb_4
@docs pb_40
@docs pb_44
@docs pb_48
@docs pb_5
@docs pb_52
@docs pb_56
@docs pb_6
@docs pb_60
@docs pb_64
@docs pb_7
@docs pb_72
@docs pb_8
@docs pb_80
@docs pb_9
@docs pb_96
@docs pb_px
@docs pl_0
@docs pl_0_dot_5
@docs pl_1
@docs pl_10
@docs pl_11
@docs pl_12
@docs pl_14
@docs pl_16
@docs pl_1_dot_5
@docs pl_2
@docs pl_20
@docs pl_24
@docs pl_28
@docs pl_2_dot_5
@docs pl_3
@docs pl_32
@docs pl_36
@docs pl_3_dot_5
@docs pl_4
@docs pl_40
@docs pl_44
@docs pl_48
@docs pl_5
@docs pl_52
@docs pl_56
@docs pl_6
@docs pl_60
@docs pl_64
@docs pl_7
@docs pl_72
@docs pl_8
@docs pl_80
@docs pl_9
@docs pl_96
@docs pl_px
@docs place_content_around
@docs place_content_between
@docs place_content_center
@docs place_content_end
@docs place_content_evenly
@docs place_content_start
@docs place_content_stretch
@docs place_items_center
@docs place_items_end
@docs place_items_start
@docs place_items_stretch
@docs place_self_auto
@docs place_self_center
@docs place_self_end
@docs place_self_start
@docs place_self_stretch
@docs placeholder_black
@docs placeholder_blue_100
@docs placeholder_blue_200
@docs placeholder_blue_300
@docs placeholder_blue_400
@docs placeholder_blue_500
@docs placeholder_blue_600
@docs placeholder_blue_700
@docs placeholder_blue_800
@docs placeholder_blue_900
@docs placeholder_current
@docs placeholder_gray_100
@docs placeholder_gray_200
@docs placeholder_gray_300
@docs placeholder_gray_400
@docs placeholder_gray_500
@docs placeholder_gray_600
@docs placeholder_gray_700
@docs placeholder_gray_800
@docs placeholder_gray_900
@docs placeholder_green_100
@docs placeholder_green_200
@docs placeholder_green_300
@docs placeholder_green_400
@docs placeholder_green_500
@docs placeholder_green_600
@docs placeholder_green_700
@docs placeholder_green_800
@docs placeholder_green_900
@docs placeholder_indigo_100
@docs placeholder_indigo_200
@docs placeholder_indigo_300
@docs placeholder_indigo_400
@docs placeholder_indigo_500
@docs placeholder_indigo_600
@docs placeholder_indigo_700
@docs placeholder_indigo_800
@docs placeholder_indigo_900
@docs placeholder_opacity_0
@docs placeholder_opacity_10
@docs placeholder_opacity_100
@docs placeholder_opacity_20
@docs placeholder_opacity_25
@docs placeholder_opacity_30
@docs placeholder_opacity_40
@docs placeholder_opacity_5
@docs placeholder_opacity_50
@docs placeholder_opacity_60
@docs placeholder_opacity_70
@docs placeholder_opacity_75
@docs placeholder_opacity_80
@docs placeholder_opacity_90
@docs placeholder_opacity_95
@docs placeholder_orange_100
@docs placeholder_orange_200
@docs placeholder_orange_300
@docs placeholder_orange_400
@docs placeholder_orange_500
@docs placeholder_orange_600
@docs placeholder_orange_700
@docs placeholder_orange_800
@docs placeholder_orange_900
@docs placeholder_pink_100
@docs placeholder_pink_200
@docs placeholder_pink_300
@docs placeholder_pink_400
@docs placeholder_pink_500
@docs placeholder_pink_600
@docs placeholder_pink_700
@docs placeholder_pink_800
@docs placeholder_pink_900
@docs placeholder_purple_100
@docs placeholder_purple_200
@docs placeholder_purple_300
@docs placeholder_purple_400
@docs placeholder_purple_500
@docs placeholder_purple_600
@docs placeholder_purple_700
@docs placeholder_purple_800
@docs placeholder_purple_900
@docs placeholder_red_100
@docs placeholder_red_200
@docs placeholder_red_300
@docs placeholder_red_400
@docs placeholder_red_500
@docs placeholder_red_600
@docs placeholder_red_700
@docs placeholder_red_800
@docs placeholder_red_900
@docs placeholder_teal_100
@docs placeholder_teal_200
@docs placeholder_teal_300
@docs placeholder_teal_400
@docs placeholder_teal_500
@docs placeholder_teal_600
@docs placeholder_teal_700
@docs placeholder_teal_800
@docs placeholder_teal_900
@docs placeholder_transparent
@docs placeholder_white
@docs placeholder_yellow_100
@docs placeholder_yellow_200
@docs placeholder_yellow_300
@docs placeholder_yellow_400
@docs placeholder_yellow_500
@docs placeholder_yellow_600
@docs placeholder_yellow_700
@docs placeholder_yellow_800
@docs placeholder_yellow_900
@docs pointer_events_auto
@docs pointer_events_none
@docs pr_0
@docs pr_0_dot_5
@docs pr_1
@docs pr_10
@docs pr_11
@docs pr_12
@docs pr_14
@docs pr_16
@docs pr_1_dot_5
@docs pr_2
@docs pr_20
@docs pr_24
@docs pr_28
@docs pr_2_dot_5
@docs pr_3
@docs pr_32
@docs pr_36
@docs pr_3_dot_5
@docs pr_4
@docs pr_40
@docs pr_44
@docs pr_48
@docs pr_5
@docs pr_52
@docs pr_56
@docs pr_6
@docs pr_60
@docs pr_64
@docs pr_7
@docs pr_72
@docs pr_8
@docs pr_80
@docs pr_9
@docs pr_96
@docs pr_px
@docs proportional_nums
@docs pt_0
@docs pt_0_dot_5
@docs pt_1
@docs pt_10
@docs pt_11
@docs pt_12
@docs pt_14
@docs pt_16
@docs pt_1_dot_5
@docs pt_2
@docs pt_20
@docs pt_24
@docs pt_28
@docs pt_2_dot_5
@docs pt_3
@docs pt_32
@docs pt_36
@docs pt_3_dot_5
@docs pt_4
@docs pt_40
@docs pt_44
@docs pt_48
@docs pt_5
@docs pt_52
@docs pt_56
@docs pt_6
@docs pt_60
@docs pt_64
@docs pt_7
@docs pt_72
@docs pt_8
@docs pt_80
@docs pt_9
@docs pt_96
@docs pt_px
@docs px_0
@docs px_0_dot_5
@docs px_1
@docs px_10
@docs px_11
@docs px_12
@docs px_14
@docs px_16
@docs px_1_dot_5
@docs px_2
@docs px_20
@docs px_24
@docs px_28
@docs px_2_dot_5
@docs px_3
@docs px_32
@docs px_36
@docs px_3_dot_5
@docs px_4
@docs px_40
@docs px_44
@docs px_48
@docs px_5
@docs px_52
@docs px_56
@docs px_6
@docs px_60
@docs px_64
@docs px_7
@docs px_72
@docs px_8
@docs px_80
@docs px_9
@docs px_96
@docs px_px
@docs py_0
@docs py_0_dot_5
@docs py_1
@docs py_10
@docs py_11
@docs py_12
@docs py_14
@docs py_16
@docs py_1_dot_5
@docs py_2
@docs py_20
@docs py_24
@docs py_28
@docs py_2_dot_5
@docs py_3
@docs py_32
@docs py_36
@docs py_3_dot_5
@docs py_4
@docs py_40
@docs py_44
@docs py_48
@docs py_5
@docs py_52
@docs py_56
@docs py_6
@docs py_60
@docs py_64
@docs py_7
@docs py_72
@docs py_8
@docs py_80
@docs py_9
@docs py_96
@docs py_px
@docs relative
@docs resize
@docs resize_none
@docs resize_x
@docs resize_y
@docs right_0
@docs right_0_dot_5
@docs right_1
@docs right_10
@docs right_11
@docs right_12
@docs right_14
@docs right_16
@docs right_1_dot_5
@docs right_1over2
@docs right_1over3
@docs right_1over4
@docs right_2
@docs right_20
@docs right_24
@docs right_28
@docs right_2_dot_5
@docs right_2over3
@docs right_2over4
@docs right_3
@docs right_32
@docs right_36
@docs right_3_dot_5
@docs right_3over4
@docs right_4
@docs right_40
@docs right_44
@docs right_48
@docs right_5
@docs right_52
@docs right_56
@docs right_6
@docs right_60
@docs right_64
@docs right_7
@docs right_72
@docs right_8
@docs right_80
@docs right_9
@docs right_96
@docs right_auto
@docs right_full
@docs right_px
@docs ring
@docs ring_0
@docs ring_1
@docs ring_2
@docs ring_4
@docs ring_8
@docs ring_black
@docs ring_blue_100
@docs ring_blue_200
@docs ring_blue_300
@docs ring_blue_400
@docs ring_blue_500
@docs ring_blue_600
@docs ring_blue_700
@docs ring_blue_800
@docs ring_blue_900
@docs ring_current
@docs ring_gray_100
@docs ring_gray_200
@docs ring_gray_300
@docs ring_gray_400
@docs ring_gray_500
@docs ring_gray_600
@docs ring_gray_700
@docs ring_gray_800
@docs ring_gray_900
@docs ring_green_100
@docs ring_green_200
@docs ring_green_300
@docs ring_green_400
@docs ring_green_500
@docs ring_green_600
@docs ring_green_700
@docs ring_green_800
@docs ring_green_900
@docs ring_indigo_100
@docs ring_indigo_200
@docs ring_indigo_300
@docs ring_indigo_400
@docs ring_indigo_500
@docs ring_indigo_600
@docs ring_indigo_700
@docs ring_indigo_800
@docs ring_indigo_900
@docs ring_inset
@docs ring_offset_0
@docs ring_offset_1
@docs ring_offset_2
@docs ring_offset_4
@docs ring_offset_8
@docs ring_offset_black
@docs ring_offset_blue_100
@docs ring_offset_blue_200
@docs ring_offset_blue_300
@docs ring_offset_blue_400
@docs ring_offset_blue_500
@docs ring_offset_blue_600
@docs ring_offset_blue_700
@docs ring_offset_blue_800
@docs ring_offset_blue_900
@docs ring_offset_current
@docs ring_offset_gray_100
@docs ring_offset_gray_200
@docs ring_offset_gray_300
@docs ring_offset_gray_400
@docs ring_offset_gray_500
@docs ring_offset_gray_600
@docs ring_offset_gray_700
@docs ring_offset_gray_800
@docs ring_offset_gray_900
@docs ring_offset_green_100
@docs ring_offset_green_200
@docs ring_offset_green_300
@docs ring_offset_green_400
@docs ring_offset_green_500
@docs ring_offset_green_600
@docs ring_offset_green_700
@docs ring_offset_green_800
@docs ring_offset_green_900
@docs ring_offset_indigo_100
@docs ring_offset_indigo_200
@docs ring_offset_indigo_300
@docs ring_offset_indigo_400
@docs ring_offset_indigo_500
@docs ring_offset_indigo_600
@docs ring_offset_indigo_700
@docs ring_offset_indigo_800
@docs ring_offset_indigo_900
@docs ring_offset_orange_100
@docs ring_offset_orange_200
@docs ring_offset_orange_300
@docs ring_offset_orange_400
@docs ring_offset_orange_500
@docs ring_offset_orange_600
@docs ring_offset_orange_700
@docs ring_offset_orange_800
@docs ring_offset_orange_900
@docs ring_offset_pink_100
@docs ring_offset_pink_200
@docs ring_offset_pink_300
@docs ring_offset_pink_400
@docs ring_offset_pink_500
@docs ring_offset_pink_600
@docs ring_offset_pink_700
@docs ring_offset_pink_800
@docs ring_offset_pink_900
@docs ring_offset_purple_100
@docs ring_offset_purple_200
@docs ring_offset_purple_300
@docs ring_offset_purple_400
@docs ring_offset_purple_500
@docs ring_offset_purple_600
@docs ring_offset_purple_700
@docs ring_offset_purple_800
@docs ring_offset_purple_900
@docs ring_offset_red_100
@docs ring_offset_red_200
@docs ring_offset_red_300
@docs ring_offset_red_400
@docs ring_offset_red_500
@docs ring_offset_red_600
@docs ring_offset_red_700
@docs ring_offset_red_800
@docs ring_offset_red_900
@docs ring_offset_teal_100
@docs ring_offset_teal_200
@docs ring_offset_teal_300
@docs ring_offset_teal_400
@docs ring_offset_teal_500
@docs ring_offset_teal_600
@docs ring_offset_teal_700
@docs ring_offset_teal_800
@docs ring_offset_teal_900
@docs ring_offset_transparent
@docs ring_offset_white
@docs ring_offset_yellow_100
@docs ring_offset_yellow_200
@docs ring_offset_yellow_300
@docs ring_offset_yellow_400
@docs ring_offset_yellow_500
@docs ring_offset_yellow_600
@docs ring_offset_yellow_700
@docs ring_offset_yellow_800
@docs ring_offset_yellow_900
@docs ring_opacity_0
@docs ring_opacity_10
@docs ring_opacity_100
@docs ring_opacity_20
@docs ring_opacity_25
@docs ring_opacity_30
@docs ring_opacity_40
@docs ring_opacity_5
@docs ring_opacity_50
@docs ring_opacity_60
@docs ring_opacity_70
@docs ring_opacity_75
@docs ring_opacity_80
@docs ring_opacity_90
@docs ring_opacity_95
@docs ring_orange_100
@docs ring_orange_200
@docs ring_orange_300
@docs ring_orange_400
@docs ring_orange_500
@docs ring_orange_600
@docs ring_orange_700
@docs ring_orange_800
@docs ring_orange_900
@docs ring_pink_100
@docs ring_pink_200
@docs ring_pink_300
@docs ring_pink_400
@docs ring_pink_500
@docs ring_pink_600
@docs ring_pink_700
@docs ring_pink_800
@docs ring_pink_900
@docs ring_purple_100
@docs ring_purple_200
@docs ring_purple_300
@docs ring_purple_400
@docs ring_purple_500
@docs ring_purple_600
@docs ring_purple_700
@docs ring_purple_800
@docs ring_purple_900
@docs ring_red_100
@docs ring_red_200
@docs ring_red_300
@docs ring_red_400
@docs ring_red_500
@docs ring_red_600
@docs ring_red_700
@docs ring_red_800
@docs ring_red_900
@docs ring_teal_100
@docs ring_teal_200
@docs ring_teal_300
@docs ring_teal_400
@docs ring_teal_500
@docs ring_teal_600
@docs ring_teal_700
@docs ring_teal_800
@docs ring_teal_900
@docs ring_transparent
@docs ring_white
@docs ring_yellow_100
@docs ring_yellow_200
@docs ring_yellow_300
@docs ring_yellow_400
@docs ring_yellow_500
@docs ring_yellow_600
@docs ring_yellow_700
@docs ring_yellow_800
@docs ring_yellow_900
@docs rotate_0
@docs rotate_1
@docs rotate_12
@docs rotate_180
@docs rotate_2
@docs rotate_3
@docs rotate_45
@docs rotate_6
@docs rotate_90
@docs rounded
@docs rounded_2xl
@docs rounded_3xl
@docs rounded_b
@docs rounded_b_2xl
@docs rounded_b_3xl
@docs rounded_b_full
@docs rounded_b_lg
@docs rounded_b_md
@docs rounded_b_none
@docs rounded_b_sm
@docs rounded_b_xl
@docs rounded_bl
@docs rounded_bl_2xl
@docs rounded_bl_3xl
@docs rounded_bl_full
@docs rounded_bl_lg
@docs rounded_bl_md
@docs rounded_bl_none
@docs rounded_bl_sm
@docs rounded_bl_xl
@docs rounded_br
@docs rounded_br_2xl
@docs rounded_br_3xl
@docs rounded_br_full
@docs rounded_br_lg
@docs rounded_br_md
@docs rounded_br_none
@docs rounded_br_sm
@docs rounded_br_xl
@docs rounded_full
@docs rounded_l
@docs rounded_l_2xl
@docs rounded_l_3xl
@docs rounded_l_full
@docs rounded_l_lg
@docs rounded_l_md
@docs rounded_l_none
@docs rounded_l_sm
@docs rounded_l_xl
@docs rounded_lg
@docs rounded_md
@docs rounded_none
@docs rounded_r
@docs rounded_r_2xl
@docs rounded_r_3xl
@docs rounded_r_full
@docs rounded_r_lg
@docs rounded_r_md
@docs rounded_r_none
@docs rounded_r_sm
@docs rounded_r_xl
@docs rounded_sm
@docs rounded_t
@docs rounded_t_2xl
@docs rounded_t_3xl
@docs rounded_t_full
@docs rounded_t_lg
@docs rounded_t_md
@docs rounded_t_none
@docs rounded_t_sm
@docs rounded_t_xl
@docs rounded_tl
@docs rounded_tl_2xl
@docs rounded_tl_3xl
@docs rounded_tl_full
@docs rounded_tl_lg
@docs rounded_tl_md
@docs rounded_tl_none
@docs rounded_tl_sm
@docs rounded_tl_xl
@docs rounded_tr
@docs rounded_tr_2xl
@docs rounded_tr_3xl
@docs rounded_tr_full
@docs rounded_tr_lg
@docs rounded_tr_md
@docs rounded_tr_none
@docs rounded_tr_sm
@docs rounded_tr_xl
@docs rounded_xl
@docs row_auto
@docs row_end_1
@docs row_end_2
@docs row_end_3
@docs row_end_4
@docs row_end_5
@docs row_end_6
@docs row_end_7
@docs row_end_auto
@docs row_span_1
@docs row_span_2
@docs row_span_3
@docs row_span_4
@docs row_span_5
@docs row_span_6
@docs row_span_full
@docs row_start_1
@docs row_start_2
@docs row_start_3
@docs row_start_4
@docs row_start_5
@docs row_start_6
@docs row_start_7
@docs row_start_auto
@docs saturate_0
@docs saturate_100
@docs saturate_150
@docs saturate_200
@docs saturate_50
@docs scale_0
@docs scale_100
@docs scale_105
@docs scale_110
@docs scale_125
@docs scale_150
@docs scale_50
@docs scale_75
@docs scale_90
@docs scale_95
@docs scale_x_0
@docs scale_x_100
@docs scale_x_105
@docs scale_x_110
@docs scale_x_125
@docs scale_x_150
@docs scale_x_50
@docs scale_x_75
@docs scale_x_90
@docs scale_x_95
@docs scale_y_0
@docs scale_y_100
@docs scale_y_105
@docs scale_y_110
@docs scale_y_125
@docs scale_y_150
@docs scale_y_50
@docs scale_y_75
@docs scale_y_90
@docs scale_y_95
@docs select_all
@docs select_auto
@docs select_none
@docs select_text
@docs self_auto
@docs self_center
@docs self_end
@docs self_start
@docs self_stretch
@docs sepia
@docs sepia_0
@docs shadow
@docs shadow_2xl
@docs shadow_inner
@docs shadow_lg
@docs shadow_md
@docs shadow_none
@docs shadow_sm
@docs shadow_xl
@docs skew_x_0
@docs skew_x_1
@docs skew_x_12
@docs skew_x_2
@docs skew_x_3
@docs skew_x_6
@docs skew_y_0
@docs skew_y_1
@docs skew_y_12
@docs skew_y_2
@docs skew_y_3
@docs skew_y_6
@docs slashed_zero
@docs space_x_0
@docs space_x_0_dot_5
@docs space_x_1
@docs space_x_10
@docs space_x_11
@docs space_x_12
@docs space_x_14
@docs space_x_16
@docs space_x_1_dot_5
@docs space_x_2
@docs space_x_20
@docs space_x_24
@docs space_x_28
@docs space_x_2_dot_5
@docs space_x_3
@docs space_x_32
@docs space_x_36
@docs space_x_3_dot_5
@docs space_x_4
@docs space_x_40
@docs space_x_44
@docs space_x_48
@docs space_x_5
@docs space_x_52
@docs space_x_56
@docs space_x_6
@docs space_x_60
@docs space_x_64
@docs space_x_7
@docs space_x_72
@docs space_x_8
@docs space_x_80
@docs space_x_9
@docs space_x_96
@docs space_x_px
@docs space_x_reverse
@docs space_y_0
@docs space_y_0_dot_5
@docs space_y_1
@docs space_y_10
@docs space_y_11
@docs space_y_12
@docs space_y_14
@docs space_y_16
@docs space_y_1_dot_5
@docs space_y_2
@docs space_y_20
@docs space_y_24
@docs space_y_28
@docs space_y_2_dot_5
@docs space_y_3
@docs space_y_32
@docs space_y_36
@docs space_y_3_dot_5
@docs space_y_4
@docs space_y_40
@docs space_y_44
@docs space_y_48
@docs space_y_5
@docs space_y_52
@docs space_y_56
@docs space_y_6
@docs space_y_60
@docs space_y_64
@docs space_y_7
@docs space_y_72
@docs space_y_8
@docs space_y_80
@docs space_y_9
@docs space_y_96
@docs space_y_px
@docs space_y_reverse
@docs sr_only
@docs stacked_fractions
@docs static
@docs sticky
@docs stroke_0
@docs stroke_1
@docs stroke_2
@docs stroke_current
@docs subpixel_antialiased
@docs table
@docs table_auto
@docs table_caption
@docs table_cell
@docs table_column
@docs table_column_group
@docs table_fixed
@docs table_footer_group
@docs table_header_group
@docs table_row
@docs table_row_group
@docs tabular_nums
@docs text_2xl
@docs text_3xl
@docs text_4xl
@docs text_5xl
@docs text_6xl
@docs text_base
@docs text_black
@docs text_blue_100
@docs text_blue_200
@docs text_blue_300
@docs text_blue_400
@docs text_blue_500
@docs text_blue_600
@docs text_blue_700
@docs text_blue_800
@docs text_blue_900
@docs text_center
@docs text_current
@docs text_gray_100
@docs text_gray_200
@docs text_gray_300
@docs text_gray_400
@docs text_gray_500
@docs text_gray_600
@docs text_gray_700
@docs text_gray_800
@docs text_gray_900
@docs text_green_100
@docs text_green_200
@docs text_green_300
@docs text_green_400
@docs text_green_500
@docs text_green_600
@docs text_green_700
@docs text_green_800
@docs text_green_900
@docs text_indigo_100
@docs text_indigo_200
@docs text_indigo_300
@docs text_indigo_400
@docs text_indigo_500
@docs text_indigo_600
@docs text_indigo_700
@docs text_indigo_800
@docs text_indigo_900
@docs text_justify
@docs text_left
@docs text_lg
@docs text_opacity_0
@docs text_opacity_10
@docs text_opacity_100
@docs text_opacity_20
@docs text_opacity_25
@docs text_opacity_30
@docs text_opacity_40
@docs text_opacity_5
@docs text_opacity_50
@docs text_opacity_60
@docs text_opacity_70
@docs text_opacity_75
@docs text_opacity_80
@docs text_opacity_90
@docs text_opacity_95
@docs text_orange_100
@docs text_orange_200
@docs text_orange_300
@docs text_orange_400
@docs text_orange_500
@docs text_orange_600
@docs text_orange_700
@docs text_orange_800
@docs text_orange_900
@docs text_pink_100
@docs text_pink_200
@docs text_pink_300
@docs text_pink_400
@docs text_pink_500
@docs text_pink_600
@docs text_pink_700
@docs text_pink_800
@docs text_pink_900
@docs text_purple_100
@docs text_purple_200
@docs text_purple_300
@docs text_purple_400
@docs text_purple_500
@docs text_purple_600
@docs text_purple_700
@docs text_purple_800
@docs text_purple_900
@docs text_red_100
@docs text_red_200
@docs text_red_300
@docs text_red_400
@docs text_red_500
@docs text_red_600
@docs text_red_700
@docs text_red_800
@docs text_red_900
@docs text_right
@docs text_sm
@docs text_teal_100
@docs text_teal_200
@docs text_teal_300
@docs text_teal_400
@docs text_teal_500
@docs text_teal_600
@docs text_teal_700
@docs text_teal_800
@docs text_teal_900
@docs text_transparent
@docs text_white
@docs text_xl
@docs text_xs
@docs text_yellow_100
@docs text_yellow_200
@docs text_yellow_300
@docs text_yellow_400
@docs text_yellow_500
@docs text_yellow_600
@docs text_yellow_700
@docs text_yellow_800
@docs text_yellow_900
@docs to_black
@docs to_blue_100
@docs to_blue_200
@docs to_blue_300
@docs to_blue_400
@docs to_blue_500
@docs to_blue_600
@docs to_blue_700
@docs to_blue_800
@docs to_blue_900
@docs to_current
@docs to_gray_100
@docs to_gray_200
@docs to_gray_300
@docs to_gray_400
@docs to_gray_500
@docs to_gray_600
@docs to_gray_700
@docs to_gray_800
@docs to_gray_900
@docs to_green_100
@docs to_green_200
@docs to_green_300
@docs to_green_400
@docs to_green_500
@docs to_green_600
@docs to_green_700
@docs to_green_800
@docs to_green_900
@docs to_indigo_100
@docs to_indigo_200
@docs to_indigo_300
@docs to_indigo_400
@docs to_indigo_500
@docs to_indigo_600
@docs to_indigo_700
@docs to_indigo_800
@docs to_indigo_900
@docs to_orange_100
@docs to_orange_200
@docs to_orange_300
@docs to_orange_400
@docs to_orange_500
@docs to_orange_600
@docs to_orange_700
@docs to_orange_800
@docs to_orange_900
@docs to_pink_100
@docs to_pink_200
@docs to_pink_300
@docs to_pink_400
@docs to_pink_500
@docs to_pink_600
@docs to_pink_700
@docs to_pink_800
@docs to_pink_900
@docs to_purple_100
@docs to_purple_200
@docs to_purple_300
@docs to_purple_400
@docs to_purple_500
@docs to_purple_600
@docs to_purple_700
@docs to_purple_800
@docs to_purple_900
@docs to_red_100
@docs to_red_200
@docs to_red_300
@docs to_red_400
@docs to_red_500
@docs to_red_600
@docs to_red_700
@docs to_red_800
@docs to_red_900
@docs to_teal_100
@docs to_teal_200
@docs to_teal_300
@docs to_teal_400
@docs to_teal_500
@docs to_teal_600
@docs to_teal_700
@docs to_teal_800
@docs to_teal_900
@docs to_transparent
@docs to_white
@docs to_yellow_100
@docs to_yellow_200
@docs to_yellow_300
@docs to_yellow_400
@docs to_yellow_500
@docs to_yellow_600
@docs to_yellow_700
@docs to_yellow_800
@docs to_yellow_900
@docs top_0
@docs top_0_dot_5
@docs top_1
@docs top_10
@docs top_11
@docs top_12
@docs top_14
@docs top_16
@docs top_1_dot_5
@docs top_1over2
@docs top_1over3
@docs top_1over4
@docs top_2
@docs top_20
@docs top_24
@docs top_28
@docs top_2_dot_5
@docs top_2over3
@docs top_2over4
@docs top_3
@docs top_32
@docs top_36
@docs top_3_dot_5
@docs top_3over4
@docs top_4
@docs top_40
@docs top_44
@docs top_48
@docs top_5
@docs top_52
@docs top_56
@docs top_6
@docs top_60
@docs top_64
@docs top_7
@docs top_72
@docs top_8
@docs top_80
@docs top_9
@docs top_96
@docs top_auto
@docs top_full
@docs top_px
@docs tracking_normal
@docs tracking_tight
@docs tracking_tighter
@docs tracking_wide
@docs tracking_wider
@docs tracking_widest
@docs transform
@docs transform_gpu
@docs transform_none
@docs transition
@docs transition_all
@docs transition_colors
@docs transition_none
@docs transition_opacity
@docs transition_shadow
@docs transition_transform
@docs translate_x_0
@docs translate_x_0_dot_5
@docs translate_x_1
@docs translate_x_10
@docs translate_x_11
@docs translate_x_12
@docs translate_x_14
@docs translate_x_16
@docs translate_x_1_dot_5
@docs translate_x_1over2
@docs translate_x_1over3
@docs translate_x_1over4
@docs translate_x_2
@docs translate_x_20
@docs translate_x_24
@docs translate_x_28
@docs translate_x_2_dot_5
@docs translate_x_2over3
@docs translate_x_2over4
@docs translate_x_3
@docs translate_x_32
@docs translate_x_36
@docs translate_x_3_dot_5
@docs translate_x_3over4
@docs translate_x_4
@docs translate_x_40
@docs translate_x_44
@docs translate_x_48
@docs translate_x_5
@docs translate_x_52
@docs translate_x_56
@docs translate_x_6
@docs translate_x_60
@docs translate_x_64
@docs translate_x_7
@docs translate_x_72
@docs translate_x_8
@docs translate_x_80
@docs translate_x_9
@docs translate_x_96
@docs translate_x_full
@docs translate_x_px
@docs translate_y_0
@docs translate_y_0_dot_5
@docs translate_y_1
@docs translate_y_10
@docs translate_y_11
@docs translate_y_12
@docs translate_y_14
@docs translate_y_16
@docs translate_y_1_dot_5
@docs translate_y_1over2
@docs translate_y_1over3
@docs translate_y_1over4
@docs translate_y_2
@docs translate_y_20
@docs translate_y_24
@docs translate_y_28
@docs translate_y_2_dot_5
@docs translate_y_2over3
@docs translate_y_2over4
@docs translate_y_3
@docs translate_y_32
@docs translate_y_36
@docs translate_y_3_dot_5
@docs translate_y_3over4
@docs translate_y_4
@docs translate_y_40
@docs translate_y_44
@docs translate_y_48
@docs translate_y_5
@docs translate_y_52
@docs translate_y_56
@docs translate_y_6
@docs translate_y_60
@docs translate_y_64
@docs translate_y_7
@docs translate_y_72
@docs translate_y_8
@docs translate_y_80
@docs translate_y_9
@docs translate_y_96
@docs translate_y_full
@docs translate_y_px
@docs truncate
@docs underline
@docs uppercase
@docs via_black
@docs via_blue_100
@docs via_blue_200
@docs via_blue_300
@docs via_blue_400
@docs via_blue_500
@docs via_blue_600
@docs via_blue_700
@docs via_blue_800
@docs via_blue_900
@docs via_current
@docs via_gray_100
@docs via_gray_200
@docs via_gray_300
@docs via_gray_400
@docs via_gray_500
@docs via_gray_600
@docs via_gray_700
@docs via_gray_800
@docs via_gray_900
@docs via_green_100
@docs via_green_200
@docs via_green_300
@docs via_green_400
@docs via_green_500
@docs via_green_600
@docs via_green_700
@docs via_green_800
@docs via_green_900
@docs via_indigo_100
@docs via_indigo_200
@docs via_indigo_300
@docs via_indigo_400
@docs via_indigo_500
@docs via_indigo_600
@docs via_indigo_700
@docs via_indigo_800
@docs via_indigo_900
@docs via_orange_100
@docs via_orange_200
@docs via_orange_300
@docs via_orange_400
@docs via_orange_500
@docs via_orange_600
@docs via_orange_700
@docs via_orange_800
@docs via_orange_900
@docs via_pink_100
@docs via_pink_200
@docs via_pink_300
@docs via_pink_400
@docs via_pink_500
@docs via_pink_600
@docs via_pink_700
@docs via_pink_800
@docs via_pink_900
@docs via_purple_100
@docs via_purple_200
@docs via_purple_300
@docs via_purple_400
@docs via_purple_500
@docs via_purple_600
@docs via_purple_700
@docs via_purple_800
@docs via_purple_900
@docs via_red_100
@docs via_red_200
@docs via_red_300
@docs via_red_400
@docs via_red_500
@docs via_red_600
@docs via_red_700
@docs via_red_800
@docs via_red_900
@docs via_teal_100
@docs via_teal_200
@docs via_teal_300
@docs via_teal_400
@docs via_teal_500
@docs via_teal_600
@docs via_teal_700
@docs via_teal_800
@docs via_teal_900
@docs via_transparent
@docs via_white
@docs via_yellow_100
@docs via_yellow_200
@docs via_yellow_300
@docs via_yellow_400
@docs via_yellow_500
@docs via_yellow_600
@docs via_yellow_700
@docs via_yellow_800
@docs via_yellow_900
@docs visible
@docs w_0
@docs w_0_dot_5
@docs w_1
@docs w_10
@docs w_10over12
@docs w_11
@docs w_11over12
@docs w_12
@docs w_14
@docs w_16
@docs w_1_dot_5
@docs w_1over12
@docs w_1over2
@docs w_1over3
@docs w_1over4
@docs w_1over5
@docs w_1over6
@docs w_2
@docs w_20
@docs w_24
@docs w_28
@docs w_2_dot_5
@docs w_2over12
@docs w_2over3
@docs w_2over4
@docs w_2over5
@docs w_2over6
@docs w_3
@docs w_32
@docs w_36
@docs w_3_dot_5
@docs w_3over12
@docs w_3over4
@docs w_3over5
@docs w_3over6
@docs w_4
@docs w_40
@docs w_44
@docs w_48
@docs w_4over12
@docs w_4over5
@docs w_4over6
@docs w_5
@docs w_52
@docs w_56
@docs w_5over12
@docs w_5over6
@docs w_6
@docs w_60
@docs w_64
@docs w_6over12
@docs w_7
@docs w_72
@docs w_7over12
@docs w_8
@docs w_80
@docs w_8over12
@docs w_9
@docs w_96
@docs w_9over12
@docs w_auto
@docs w_full
@docs w_max
@docs w_min
@docs w_px
@docs w_screen
@docs whitespace_normal
@docs whitespace_nowrap
@docs whitespace_pre
@docs whitespace_pre_line
@docs whitespace_pre_wrap
@docs z_0
@docs z_10
@docs z_20
@docs z_30
@docs z_40
@docs z_50
@docs z_auto

-}

import Css
import Css.Animations
import Css.Global
import Css.Media


{-| This contains tailwind's style reset.

This is something similar to normalize.css, if you're familiar with it.

You **need to include this in your html** at any time you use this module,
as some of the classes in here depend on css variables defined in the global styles.

You include it like so:

    import Css.Global
    import Html.Styled as Html exposing (Html)
    import Tailwind.Utilities exposing (globalStyles)

    view : Html msg
    view =
        div []
            [ -- Like this:
              Css.Global.global globalStyles

            -- Continue with any other Html
            ]

It only needs to be included once.

-}
globalStyles : List Css.Global.Snippet
globalStyles =
    [ Css.Global.selector "*,\n*::before,\n*::after"
        [ Css.property "box-sizing" "border-box"
        ]
    , Css.Global.selector ":root"
        [ Css.property "-moz-tab-size" "4"
        , Css.property "tab-size" "4"
        ]
    , Css.Global.selector "html"
        [ Css.property "line-height" "1.15"
        , Css.property "-webkit-text-size-adjust" "100%"
        ]
    , Css.Global.selector "body"
        [ Css.property "margin" "0"
        ]
    , Css.Global.selector "body"
        [ Css.property "font-family" "system-ui,\n\t\t-apple-system, \n\t\t'Segoe UI',\n\t\tRoboto,\n\t\tHelvetica,\n\t\tArial,\n\t\tsans-serif,\n\t\t'Apple Color Emoji',\n\t\t'Segoe UI Emoji'"
        ]
    , Css.Global.selector "hr"
        [ Css.property "height" "0"
        , Css.property "color" "inherit"
        ]
    , Css.Global.selector "abbr[title]"
        [ Css.property "text-decoration" "underline dotted"
        ]
    , Css.Global.selector "b,\nstrong"
        [ Css.property "font-weight" "bolder"
        ]
    , Css.Global.selector "code,\nkbd,\nsamp,\npre"
        [ Css.property "font-family" "ui-monospace,\n\t\tSFMono-Regular,\n\t\tConsolas,\n\t\t'Liberation Mono',\n\t\tMenlo,\n\t\tmonospace"
        , Css.property "font-size" "1em"
        ]
    , Css.Global.selector "small"
        [ Css.property "font-size" "80%"
        ]
    , Css.Global.selector "sub,\nsup"
        [ Css.property "font-size" "75%"
        , Css.property "line-height" "0"
        , Css.property "position" "relative"
        , Css.property "vertical-align" "baseline"
        ]
    , Css.Global.selector "sub"
        [ Css.property "bottom" "-0.25em"
        ]
    , Css.Global.selector "sup"
        [ Css.property "top" "-0.5em"
        ]
    , Css.Global.selector "table"
        [ Css.property "text-indent" "0"
        , Css.property "border-color" "inherit"
        ]
    , Css.Global.selector "button,\ninput,\noptgroup,\nselect,\ntextarea"
        [ Css.property "font-family" "inherit"
        , Css.property "font-size" "100%"
        , Css.property "line-height" "1.15"
        , Css.property "margin" "0"
        ]
    , Css.Global.selector "button,\nselect"
        [ Css.property "text-transform" "none"
        ]
    , Css.Global.selector "button,\n[type='button'],\n[type='reset'],\n[type='submit']"
        [ Css.property "-webkit-appearance" "button"
        ]
    , Css.Global.selector "::-moz-focus-inner"
        [ Css.property "border-style" "none"
        , Css.property "padding" "0"
        ]
    , Css.Global.selector ":-moz-focusring"
        [ Css.property "outline" "1px dotted ButtonText"
        ]
    , Css.Global.selector ":-moz-ui-invalid"
        [ Css.property "box-shadow" "none"
        ]
    , Css.Global.selector "legend"
        [ Css.property "padding" "0"
        ]
    , Css.Global.selector "progress"
        [ Css.property "vertical-align" "baseline"
        ]
    , Css.Global.selector "::-webkit-inner-spin-button,\n::-webkit-outer-spin-button"
        [ Css.property "height" "auto"
        ]
    , Css.Global.selector "[type='search']"
        [ Css.property "-webkit-appearance" "textfield"
        , Css.property "outline-offset" "-2px"
        ]
    , Css.Global.selector "::-webkit-search-decoration"
        [ Css.property "-webkit-appearance" "none"
        ]
    , Css.Global.selector "::-webkit-file-upload-button"
        [ Css.property "-webkit-appearance" "button"
        , Css.property "font" "inherit"
        ]
    , Css.Global.selector "summary"
        [ Css.property "display" "list-item"
        ]
    , Css.Global.selector "blockquote,\ndl,\ndd,\nh1,\nh2,\nh3,\nh4,\nh5,\nh6,\nhr,\nfigure,\np,\npre"
        [ Css.property "margin" "0"
        ]
    , Css.Global.selector "button"
        [ Css.property "background-color" "transparent"
        , Css.property "background-image" "none"
        ]
    , Css.Global.selector "button:focus"
        [ Css.property "outline" "1px dotted"
        , Css.property "outline" "5px auto -webkit-focus-ring-color"
        ]
    , Css.Global.selector "fieldset"
        [ Css.property "margin" "0"
        , Css.property "padding" "0"
        ]
    , Css.Global.selector "ol,\nul"
        [ Css.property "list-style" "none"
        , Css.property "margin" "0"
        , Css.property "padding" "0"
        ]
    , Css.Global.selector "html"
        [ Css.property "font-family" "system-ui, -apple-system, BlinkMacSystemFont, \"Segoe UI\", Roboto, \"Helvetica Neue\", Arial, \"Noto Sans\", sans-serif, \"Apple Color Emoji\", \"Segoe UI Emoji\", \"Segoe UI Symbol\", \"Noto Color Emoji\""
        , Css.property "line-height" "1.5"
        ]
    , Css.Global.selector "body"
        [ Css.property "font-family" "inherit"
        , Css.property "line-height" "inherit"
        ]
    , Css.Global.selector "*,\n::before,\n::after"
        [ Css.property "box-sizing" "border-box"
        , Css.property "border-width" "0"
        , Css.property "border-style" "solid"
        , Css.property "border-color" "#edf2f7"
        ]
    , Css.Global.selector "hr"
        [ Css.property "border-top-width" "1px"
        ]
    , Css.Global.selector "img"
        [ Css.property "border-style" "solid"
        ]
    , Css.Global.selector "textarea"
        [ Css.property "resize" "vertical"
        ]
    , Css.Global.selector "input::placeholder,\ntextarea::placeholder"
        [ Css.property "opacity" "1"
        , Css.property "color" "#cbd5e0"
        ]
    , Css.Global.selector "button,\n[role=\"button\"]"
        [ Css.property "cursor" "pointer"
        ]
    , Css.Global.selector "table"
        [ Css.property "border-collapse" "collapse"
        ]
    , Css.Global.selector "h1,\nh2,\nh3,\nh4,\nh5,\nh6"
        [ Css.property "font-size" "inherit"
        , Css.property "font-weight" "inherit"
        ]
    , Css.Global.selector "a"
        [ Css.property "color" "inherit"
        , Css.property "text-decoration" "inherit"
        ]
    , Css.Global.selector "button,\ninput,\noptgroup,\nselect,\ntextarea"
        [ Css.property "padding" "0"
        , Css.property "line-height" "inherit"
        , Css.property "color" "inherit"
        ]
    , Css.Global.selector "pre,\ncode,\nkbd,\nsamp"
        [ Css.property "font-family" "Menlo, Monaco, Consolas, \"Liberation Mono\", \"Courier New\", monospace"
        ]
    , Css.Global.selector "img,\nsvg,\nvideo,\ncanvas,\naudio,\niframe,\nembed,\nobject"
        [ Css.property "display" "block"
        , Css.property "vertical-align" "middle"
        ]
    , Css.Global.selector "img,\nvideo"
        [ Css.property "max-width" "100%"
        , Css.property "height" "auto"
        ]
    , Css.Global.selector "*"
        [ Css.property "--tw-shadow" "0 0 #0000"
        ]
    , Css.Global.selector "*"
        [ Css.property "--tw-ring-inset" "var(--tw-empty,/*!*/ /*!*/)"
        , Css.property "--tw-ring-offset-width" "0px"
        , Css.property "--tw-ring-offset-color" "#fff"
        , Css.property "--tw-ring-color" "rgba(66, 153, 225, 0.5)"
        , Css.property "--tw-ring-offset-shadow" "0 0 #0000"
        , Css.property "--tw-ring-shadow" "0 0 #0000"
        ]
    ]


{-| This class has the effect of following css declaration:

```css
.absolute {
  position: absolute
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
absolute : Css.Style
absolute =
    Css.property "position" "absolute"


{-| This class has the effect of following css declaration:

```css
.align-baseline {
  vertical-align: baseline
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
align_baseline : Css.Style
align_baseline =
    Css.property "vertical-align" "baseline"


{-| This class has the effect of following css declaration:

```css
.align-bottom {
  vertical-align: bottom
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
align_bottom : Css.Style
align_bottom =
    Css.property "vertical-align" "bottom"


{-| This class has the effect of following css declaration:

```css
.align-middle {
  vertical-align: middle
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
align_middle : Css.Style
align_middle =
    Css.property "vertical-align" "middle"


{-| This class has the effect of following css declaration:

```css
.align-text-bottom {
  vertical-align: text-bottom
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
align_text_bottom : Css.Style
align_text_bottom =
    Css.property "vertical-align" "text-bottom"


{-| This class has the effect of following css declaration:

```css
.align-text-top {
  vertical-align: text-top
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
align_text_top : Css.Style
align_text_top =
    Css.property "vertical-align" "text-top"


{-| This class has the effect of following css declaration:

```css
.align-top {
  vertical-align: top
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
align_top : Css.Style
align_top =
    Css.property "vertical-align" "top"


{-| This class has the effect of following css declaration:

```css
.animate-bounce {
  animation: bounce 1s infinite
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
animate_bounce : Css.Style
animate_bounce =
    Css.batch
        [ Css.property "animation" "1s infinite"
        , Css.animationName
            (Css.Animations.keyframes
                [ ( 0
                  , [ Css.Animations.property "transform" "translateY(-25%)"
                    , Css.Animations.property "animation-timing-function" "cubic-bezier(0.8,0,1,1)"
                    ]
                  )
                , ( 50
                  , [ Css.Animations.property "transform" "none"
                    , Css.Animations.property "animation-timing-function" "cubic-bezier(0,0,0.2,1)"
                    ]
                  )
                ]
            )
        ]


{-| This class has the effect of following css declaration:

```css
.animate-none {
  animation: none
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
animate_none : Css.Style
animate_none =
    Css.property "animation" "none"


{-| This class has the effect of following css declaration:

```css
.animate-ping {
  animation: ping 1s cubic-bezier(0, 0, 0.2, 1) infinite
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
animate_ping : Css.Style
animate_ping =
    Css.batch
        [ Css.property "animation" "1s cubic-bezier(0, 0, 0.2, 1) infinite"
        , Css.animationName
            (Css.Animations.keyframes
                [ ( 75
                  , [ Css.Animations.property "transform" "scale(2)"
                    , Css.Animations.property "opacity" "0"
                    ]
                  )
                ]
            )
        ]


{-| This class has the effect of following css declaration:

```css
.animate-pulse {
  animation: pulse 2s cubic-bezier(0.4, 0, 0.6, 1) infinite
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
animate_pulse : Css.Style
animate_pulse =
    Css.batch
        [ Css.property "animation" "2s cubic-bezier(0.4, 0, 0.6, 1) infinite"
        , Css.animationName
            (Css.Animations.keyframes
                [ ( 50
                  , [ Css.Animations.property "opacity" ".5"
                    ]
                  )
                ]
            )
        ]


{-| This class has the effect of following css declaration:

```css
.animate-spin {
  animation: spin 1s linear infinite
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
animate_spin : Css.Style
animate_spin =
    Css.batch
        [ Css.property "animation" "1s linear infinite"
        , Css.animationName
            (Css.Animations.keyframes
                [ ( 100
                  , [ Css.Animations.property "transform" "rotate(360deg)"
                    ]
                  )
                ]
            )
        ]


{-| This class has the effect of following css declaration:

```css
.antialiased {
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
antialiased : Css.Style
antialiased =
    Css.batch
        [ Css.property "-webkit-font-smoothing" "antialiased"
        , Css.property "-moz-osx-font-smoothing" "grayscale"
        ]


{-| This class has the effect of following css declaration:

```css
.appearance-none {
  appearance: none
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
appearance_none : Css.Style
appearance_none =
    Css.property "appearance" "none"


{-| This class has the effect of following css declaration:

```css
.auto-cols-auto {
  grid-auto-columns: auto
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
auto_cols_auto : Css.Style
auto_cols_auto =
    Css.property "grid-auto-columns" "auto"


{-| This class has the effect of following css declaration:

```css
.auto-cols-fr {
  grid-auto-columns: minmax(0, 1fr)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
auto_cols_fr : Css.Style
auto_cols_fr =
    Css.property "grid-auto-columns" "minmax(0, 1fr)"


{-| This class has the effect of following css declaration:

```css
.auto-cols-max {
  grid-auto-columns: max-content
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
auto_cols_max : Css.Style
auto_cols_max =
    Css.property "grid-auto-columns" "max-content"


{-| This class has the effect of following css declaration:

```css
.auto-cols-min {
  grid-auto-columns: min-content
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
auto_cols_min : Css.Style
auto_cols_min =
    Css.property "grid-auto-columns" "min-content"


{-| This class has the effect of following css declaration:

```css
.auto-rows-auto {
  grid-auto-rows: auto
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
auto_rows_auto : Css.Style
auto_rows_auto =
    Css.property "grid-auto-rows" "auto"


{-| This class has the effect of following css declaration:

```css
.auto-rows-fr {
  grid-auto-rows: minmax(0, 1fr)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
auto_rows_fr : Css.Style
auto_rows_fr =
    Css.property "grid-auto-rows" "minmax(0, 1fr)"


{-| This class has the effect of following css declaration:

```css
.auto-rows-max {
  grid-auto-rows: max-content
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
auto_rows_max : Css.Style
auto_rows_max =
    Css.property "grid-auto-rows" "max-content"


{-| This class has the effect of following css declaration:

```css
.auto-rows-min {
  grid-auto-rows: min-content
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
auto_rows_min : Css.Style
auto_rows_min =
    Css.property "grid-auto-rows" "min-content"


{-| This class has the effect of following css declaration:

```css
.backdrop-blur {
  --tw-backdrop-blur: blur(8px)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
backdrop_blur : Css.Style
backdrop_blur =
    Css.property "--tw-backdrop-blur" "blur(8px)"


{-| This class has the effect of following css declaration:

```css
.backdrop-blur-0 {
  --tw-backdrop-blur: blur(0)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
backdrop_blur_0 : Css.Style
backdrop_blur_0 =
    Css.property "--tw-backdrop-blur" "blur(0)"


{-| This class has the effect of following css declaration:

```css
.backdrop-blur-2xl {
  --tw-backdrop-blur: blur(40px)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
backdrop_blur_2xl : Css.Style
backdrop_blur_2xl =
    Css.property "--tw-backdrop-blur" "blur(40px)"


{-| This class has the effect of following css declaration:

```css
.backdrop-blur-3xl {
  --tw-backdrop-blur: blur(64px)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
backdrop_blur_3xl : Css.Style
backdrop_blur_3xl =
    Css.property "--tw-backdrop-blur" "blur(64px)"


{-| This class has the effect of following css declaration:

```css
.backdrop-blur-lg {
  --tw-backdrop-blur: blur(16px)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
backdrop_blur_lg : Css.Style
backdrop_blur_lg =
    Css.property "--tw-backdrop-blur" "blur(16px)"


{-| This class has the effect of following css declaration:

```css
.backdrop-blur-md {
  --tw-backdrop-blur: blur(12px)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
backdrop_blur_md : Css.Style
backdrop_blur_md =
    Css.property "--tw-backdrop-blur" "blur(12px)"


{-| This class has the effect of following css declaration:

```css
.backdrop-blur-sm {
  --tw-backdrop-blur: blur(4px)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
backdrop_blur_sm : Css.Style
backdrop_blur_sm =
    Css.property "--tw-backdrop-blur" "blur(4px)"


{-| This class has the effect of following css declaration:

```css
.backdrop-blur-xl {
  --tw-backdrop-blur: blur(24px)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
backdrop_blur_xl : Css.Style
backdrop_blur_xl =
    Css.property "--tw-backdrop-blur" "blur(24px)"


{-| This class has the effect of following css declaration:

```css
.backdrop-brightness-0 {
  --tw-backdrop-brightness: brightness(0)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
backdrop_brightness_0 : Css.Style
backdrop_brightness_0 =
    Css.property "--tw-backdrop-brightness" "brightness(0)"


{-| This class has the effect of following css declaration:

```css
.backdrop-brightness-100 {
  --tw-backdrop-brightness: brightness(1)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
backdrop_brightness_100 : Css.Style
backdrop_brightness_100 =
    Css.property "--tw-backdrop-brightness" "brightness(1)"


{-| This class has the effect of following css declaration:

```css
.backdrop-brightness-105 {
  --tw-backdrop-brightness: brightness(1.05)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
backdrop_brightness_105 : Css.Style
backdrop_brightness_105 =
    Css.property "--tw-backdrop-brightness" "brightness(1.05)"


{-| This class has the effect of following css declaration:

```css
.backdrop-brightness-110 {
  --tw-backdrop-brightness: brightness(1.1)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
backdrop_brightness_110 : Css.Style
backdrop_brightness_110 =
    Css.property "--tw-backdrop-brightness" "brightness(1.1)"


{-| This class has the effect of following css declaration:

```css
.backdrop-brightness-125 {
  --tw-backdrop-brightness: brightness(1.25)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
backdrop_brightness_125 : Css.Style
backdrop_brightness_125 =
    Css.property "--tw-backdrop-brightness" "brightness(1.25)"


{-| This class has the effect of following css declaration:

```css
.backdrop-brightness-150 {
  --tw-backdrop-brightness: brightness(1.5)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
backdrop_brightness_150 : Css.Style
backdrop_brightness_150 =
    Css.property "--tw-backdrop-brightness" "brightness(1.5)"


{-| This class has the effect of following css declaration:

```css
.backdrop-brightness-200 {
  --tw-backdrop-brightness: brightness(2)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
backdrop_brightness_200 : Css.Style
backdrop_brightness_200 =
    Css.property "--tw-backdrop-brightness" "brightness(2)"


{-| This class has the effect of following css declaration:

```css
.backdrop-brightness-50 {
  --tw-backdrop-brightness: brightness(.5)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
backdrop_brightness_50 : Css.Style
backdrop_brightness_50 =
    Css.property "--tw-backdrop-brightness" "brightness(.5)"


{-| This class has the effect of following css declaration:

```css
.backdrop-brightness-75 {
  --tw-backdrop-brightness: brightness(.75)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
backdrop_brightness_75 : Css.Style
backdrop_brightness_75 =
    Css.property "--tw-backdrop-brightness" "brightness(.75)"


{-| This class has the effect of following css declaration:

```css
.backdrop-brightness-90 {
  --tw-backdrop-brightness: brightness(.9)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
backdrop_brightness_90 : Css.Style
backdrop_brightness_90 =
    Css.property "--tw-backdrop-brightness" "brightness(.9)"


{-| This class has the effect of following css declaration:

```css
.backdrop-brightness-95 {
  --tw-backdrop-brightness: brightness(.95)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
backdrop_brightness_95 : Css.Style
backdrop_brightness_95 =
    Css.property "--tw-backdrop-brightness" "brightness(.95)"


{-| This class has the effect of following css declaration:

```css
.backdrop-contrast-0 {
  --tw-backdrop-contrast: contrast(0)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
backdrop_contrast_0 : Css.Style
backdrop_contrast_0 =
    Css.property "--tw-backdrop-contrast" "contrast(0)"


{-| This class has the effect of following css declaration:

```css
.backdrop-contrast-100 {
  --tw-backdrop-contrast: contrast(1)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
backdrop_contrast_100 : Css.Style
backdrop_contrast_100 =
    Css.property "--tw-backdrop-contrast" "contrast(1)"


{-| This class has the effect of following css declaration:

```css
.backdrop-contrast-125 {
  --tw-backdrop-contrast: contrast(1.25)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
backdrop_contrast_125 : Css.Style
backdrop_contrast_125 =
    Css.property "--tw-backdrop-contrast" "contrast(1.25)"


{-| This class has the effect of following css declaration:

```css
.backdrop-contrast-150 {
  --tw-backdrop-contrast: contrast(1.5)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
backdrop_contrast_150 : Css.Style
backdrop_contrast_150 =
    Css.property "--tw-backdrop-contrast" "contrast(1.5)"


{-| This class has the effect of following css declaration:

```css
.backdrop-contrast-200 {
  --tw-backdrop-contrast: contrast(2)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
backdrop_contrast_200 : Css.Style
backdrop_contrast_200 =
    Css.property "--tw-backdrop-contrast" "contrast(2)"


{-| This class has the effect of following css declaration:

```css
.backdrop-contrast-50 {
  --tw-backdrop-contrast: contrast(.5)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
backdrop_contrast_50 : Css.Style
backdrop_contrast_50 =
    Css.property "--tw-backdrop-contrast" "contrast(.5)"


{-| This class has the effect of following css declaration:

```css
.backdrop-contrast-75 {
  --tw-backdrop-contrast: contrast(.75)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
backdrop_contrast_75 : Css.Style
backdrop_contrast_75 =
    Css.property "--tw-backdrop-contrast" "contrast(.75)"


{-| This class has the effect of following css declaration:

```css
.backdrop-filter {
  --tw-backdrop-blur: var(--tw-empty,/*!*/ /*!*/);
  --tw-backdrop-brightness: var(--tw-empty,/*!*/ /*!*/);
  --tw-backdrop-contrast: var(--tw-empty,/*!*/ /*!*/);
  --tw-backdrop-grayscale: var(--tw-empty,/*!*/ /*!*/);
  --tw-backdrop-hue-rotate: var(--tw-empty,/*!*/ /*!*/);
  --tw-backdrop-invert: var(--tw-empty,/*!*/ /*!*/);
  --tw-backdrop-opacity: var(--tw-empty,/*!*/ /*!*/);
  --tw-backdrop-saturate: var(--tw-empty,/*!*/ /*!*/);
  --tw-backdrop-sepia: var(--tw-empty,/*!*/ /*!*/);
  backdrop-filter: var(--tw-backdrop-blur) var(--tw-backdrop-brightness) var(--tw-backdrop-contrast) var(--tw-backdrop-grayscale) var(--tw-backdrop-hue-rotate) var(--tw-backdrop-invert) var(--tw-backdrop-opacity) var(--tw-backdrop-saturate) var(--tw-backdrop-sepia)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
backdrop_filter : Css.Style
backdrop_filter =
    Css.batch
        [ Css.property "--tw-backdrop-blur" "var(--tw-empty,/*!*/ /*!*/)"
        , Css.property "--tw-backdrop-brightness" "var(--tw-empty,/*!*/ /*!*/)"
        , Css.property "--tw-backdrop-contrast" "var(--tw-empty,/*!*/ /*!*/)"
        , Css.property "--tw-backdrop-grayscale" "var(--tw-empty,/*!*/ /*!*/)"
        , Css.property "--tw-backdrop-hue-rotate" "var(--tw-empty,/*!*/ /*!*/)"
        , Css.property "--tw-backdrop-invert" "var(--tw-empty,/*!*/ /*!*/)"
        , Css.property "--tw-backdrop-opacity" "var(--tw-empty,/*!*/ /*!*/)"
        , Css.property "--tw-backdrop-saturate" "var(--tw-empty,/*!*/ /*!*/)"
        , Css.property "--tw-backdrop-sepia" "var(--tw-empty,/*!*/ /*!*/)"
        , Css.property "backdrop-filter" "var(--tw-backdrop-blur) var(--tw-backdrop-brightness) var(--tw-backdrop-contrast) var(--tw-backdrop-grayscale) var(--tw-backdrop-hue-rotate) var(--tw-backdrop-invert) var(--tw-backdrop-opacity) var(--tw-backdrop-saturate) var(--tw-backdrop-sepia)"
        ]


{-| This class has the effect of following css declaration:

```css
.backdrop-filter-none {
  backdrop-filter: none
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
backdrop_filter_none : Css.Style
backdrop_filter_none =
    Css.property "backdrop-filter" "none"


{-| This class has the effect of following css declaration:

```css
.backdrop-grayscale {
  --tw-backdrop-grayscale: grayscale(100%)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
backdrop_grayscale : Css.Style
backdrop_grayscale =
    Css.property "--tw-backdrop-grayscale" "grayscale(100%)"


{-| This class has the effect of following css declaration:

```css
.backdrop-grayscale-0 {
  --tw-backdrop-grayscale: grayscale(0)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
backdrop_grayscale_0 : Css.Style
backdrop_grayscale_0 =
    Css.property "--tw-backdrop-grayscale" "grayscale(0)"


{-| This class has the effect of following css declaration:

```css
.backdrop-hue-rotate-0 {
  --tw-backdrop-hue-rotate: hue-rotate(0deg)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
backdrop_hue_rotate_0 : Css.Style
backdrop_hue_rotate_0 =
    Css.property "--tw-backdrop-hue-rotate" "hue-rotate(0deg)"


{-| This class has the effect of following css declaration:

```css
.backdrop-hue-rotate-15 {
  --tw-backdrop-hue-rotate: hue-rotate(15deg)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
backdrop_hue_rotate_15 : Css.Style
backdrop_hue_rotate_15 =
    Css.property "--tw-backdrop-hue-rotate" "hue-rotate(15deg)"


{-| This class has the effect of following css declaration:

```css
.backdrop-hue-rotate-180 {
  --tw-backdrop-hue-rotate: hue-rotate(180deg)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
backdrop_hue_rotate_180 : Css.Style
backdrop_hue_rotate_180 =
    Css.property "--tw-backdrop-hue-rotate" "hue-rotate(180deg)"


{-| This class has the effect of following css declaration:

```css
.backdrop-hue-rotate-30 {
  --tw-backdrop-hue-rotate: hue-rotate(30deg)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
backdrop_hue_rotate_30 : Css.Style
backdrop_hue_rotate_30 =
    Css.property "--tw-backdrop-hue-rotate" "hue-rotate(30deg)"


{-| This class has the effect of following css declaration:

```css
.backdrop-hue-rotate-60 {
  --tw-backdrop-hue-rotate: hue-rotate(60deg)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
backdrop_hue_rotate_60 : Css.Style
backdrop_hue_rotate_60 =
    Css.property "--tw-backdrop-hue-rotate" "hue-rotate(60deg)"


{-| This class has the effect of following css declaration:

```css
.backdrop-hue-rotate-90 {
  --tw-backdrop-hue-rotate: hue-rotate(90deg)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
backdrop_hue_rotate_90 : Css.Style
backdrop_hue_rotate_90 =
    Css.property "--tw-backdrop-hue-rotate" "hue-rotate(90deg)"


{-| This class has the effect of following css declaration:

```css
.backdrop-invert {
  --tw-backdrop-invert: invert(100%)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
backdrop_invert : Css.Style
backdrop_invert =
    Css.property "--tw-backdrop-invert" "invert(100%)"


{-| This class has the effect of following css declaration:

```css
.backdrop-invert-0 {
  --tw-backdrop-invert: invert(0)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
backdrop_invert_0 : Css.Style
backdrop_invert_0 =
    Css.property "--tw-backdrop-invert" "invert(0)"


{-| This class has the effect of following css declaration:

```css
.backdrop-opacity-0 {
  --tw-backdrop-opacity: opacity(0)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
backdrop_opacity_0 : Css.Style
backdrop_opacity_0 =
    Css.property "--tw-backdrop-opacity" "opacity(0)"


{-| This class has the effect of following css declaration:

```css
.backdrop-opacity-10 {
  --tw-backdrop-opacity: opacity(0.1)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
backdrop_opacity_10 : Css.Style
backdrop_opacity_10 =
    Css.property "--tw-backdrop-opacity" "opacity(0.1)"


{-| This class has the effect of following css declaration:

```css
.backdrop-opacity-100 {
  --tw-backdrop-opacity: opacity(1)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
backdrop_opacity_100 : Css.Style
backdrop_opacity_100 =
    Css.property "--tw-backdrop-opacity" "opacity(1)"


{-| This class has the effect of following css declaration:

```css
.backdrop-opacity-20 {
  --tw-backdrop-opacity: opacity(0.2)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
backdrop_opacity_20 : Css.Style
backdrop_opacity_20 =
    Css.property "--tw-backdrop-opacity" "opacity(0.2)"


{-| This class has the effect of following css declaration:

```css
.backdrop-opacity-25 {
  --tw-backdrop-opacity: opacity(0.25)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
backdrop_opacity_25 : Css.Style
backdrop_opacity_25 =
    Css.property "--tw-backdrop-opacity" "opacity(0.25)"


{-| This class has the effect of following css declaration:

```css
.backdrop-opacity-30 {
  --tw-backdrop-opacity: opacity(0.3)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
backdrop_opacity_30 : Css.Style
backdrop_opacity_30 =
    Css.property "--tw-backdrop-opacity" "opacity(0.3)"


{-| This class has the effect of following css declaration:

```css
.backdrop-opacity-40 {
  --tw-backdrop-opacity: opacity(0.4)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
backdrop_opacity_40 : Css.Style
backdrop_opacity_40 =
    Css.property "--tw-backdrop-opacity" "opacity(0.4)"


{-| This class has the effect of following css declaration:

```css
.backdrop-opacity-5 {
  --tw-backdrop-opacity: opacity(0.05)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
backdrop_opacity_5 : Css.Style
backdrop_opacity_5 =
    Css.property "--tw-backdrop-opacity" "opacity(0.05)"


{-| This class has the effect of following css declaration:

```css
.backdrop-opacity-50 {
  --tw-backdrop-opacity: opacity(0.5)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
backdrop_opacity_50 : Css.Style
backdrop_opacity_50 =
    Css.property "--tw-backdrop-opacity" "opacity(0.5)"


{-| This class has the effect of following css declaration:

```css
.backdrop-opacity-60 {
  --tw-backdrop-opacity: opacity(0.6)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
backdrop_opacity_60 : Css.Style
backdrop_opacity_60 =
    Css.property "--tw-backdrop-opacity" "opacity(0.6)"


{-| This class has the effect of following css declaration:

```css
.backdrop-opacity-70 {
  --tw-backdrop-opacity: opacity(0.7)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
backdrop_opacity_70 : Css.Style
backdrop_opacity_70 =
    Css.property "--tw-backdrop-opacity" "opacity(0.7)"


{-| This class has the effect of following css declaration:

```css
.backdrop-opacity-75 {
  --tw-backdrop-opacity: opacity(0.75)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
backdrop_opacity_75 : Css.Style
backdrop_opacity_75 =
    Css.property "--tw-backdrop-opacity" "opacity(0.75)"


{-| This class has the effect of following css declaration:

```css
.backdrop-opacity-80 {
  --tw-backdrop-opacity: opacity(0.8)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
backdrop_opacity_80 : Css.Style
backdrop_opacity_80 =
    Css.property "--tw-backdrop-opacity" "opacity(0.8)"


{-| This class has the effect of following css declaration:

```css
.backdrop-opacity-90 {
  --tw-backdrop-opacity: opacity(0.9)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
backdrop_opacity_90 : Css.Style
backdrop_opacity_90 =
    Css.property "--tw-backdrop-opacity" "opacity(0.9)"


{-| This class has the effect of following css declaration:

```css
.backdrop-opacity-95 {
  --tw-backdrop-opacity: opacity(0.95)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
backdrop_opacity_95 : Css.Style
backdrop_opacity_95 =
    Css.property "--tw-backdrop-opacity" "opacity(0.95)"


{-| This class has the effect of following css declaration:

```css
.backdrop-saturate-0 {
  --tw-backdrop-saturate: saturate(0)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
backdrop_saturate_0 : Css.Style
backdrop_saturate_0 =
    Css.property "--tw-backdrop-saturate" "saturate(0)"


{-| This class has the effect of following css declaration:

```css
.backdrop-saturate-100 {
  --tw-backdrop-saturate: saturate(1)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
backdrop_saturate_100 : Css.Style
backdrop_saturate_100 =
    Css.property "--tw-backdrop-saturate" "saturate(1)"


{-| This class has the effect of following css declaration:

```css
.backdrop-saturate-150 {
  --tw-backdrop-saturate: saturate(1.5)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
backdrop_saturate_150 : Css.Style
backdrop_saturate_150 =
    Css.property "--tw-backdrop-saturate" "saturate(1.5)"


{-| This class has the effect of following css declaration:

```css
.backdrop-saturate-200 {
  --tw-backdrop-saturate: saturate(2)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
backdrop_saturate_200 : Css.Style
backdrop_saturate_200 =
    Css.property "--tw-backdrop-saturate" "saturate(2)"


{-| This class has the effect of following css declaration:

```css
.backdrop-saturate-50 {
  --tw-backdrop-saturate: saturate(.5)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
backdrop_saturate_50 : Css.Style
backdrop_saturate_50 =
    Css.property "--tw-backdrop-saturate" "saturate(.5)"


{-| This class has the effect of following css declaration:

```css
.backdrop-sepia {
  --tw-backdrop-sepia: sepia(100%)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
backdrop_sepia : Css.Style
backdrop_sepia =
    Css.property "--tw-backdrop-sepia" "sepia(100%)"


{-| This class has the effect of following css declaration:

```css
.backdrop-sepia-0 {
  --tw-backdrop-sepia: sepia(0)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
backdrop_sepia_0 : Css.Style
backdrop_sepia_0 =
    Css.property "--tw-backdrop-sepia" "sepia(0)"


{-| This class has the effect of following css declaration:

```css
.bg-auto {
  background-size: auto
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_auto : Css.Style
bg_auto =
    Css.property "background-size" "auto"


{-| This class has the effect of following css declaration:

```css
.bg-black {
  --tw-bg-opacity: 1;
  background-color: rgba(0, 0, 0, var(--tw-bg-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_black : Css.Style
bg_black =
    Css.batch
        [ Css.property "--tw-bg-opacity" "1"
        , Css.property "background-color" "rgba(0, 0, 0, var(--tw-bg-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.bg-blend-color {
  background-blend-mode: color
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_blend_color : Css.Style
bg_blend_color =
    Css.property "background-blend-mode" "color"


{-| This class has the effect of following css declaration:

```css
.bg-blend-color-burn {
  background-blend-mode: color-burn
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_blend_color_burn : Css.Style
bg_blend_color_burn =
    Css.property "background-blend-mode" "color-burn"


{-| This class has the effect of following css declaration:

```css
.bg-blend-color-dodge {
  background-blend-mode: color-dodge
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_blend_color_dodge : Css.Style
bg_blend_color_dodge =
    Css.property "background-blend-mode" "color-dodge"


{-| This class has the effect of following css declaration:

```css
.bg-blend-darken {
  background-blend-mode: darken
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_blend_darken : Css.Style
bg_blend_darken =
    Css.property "background-blend-mode" "darken"


{-| This class has the effect of following css declaration:

```css
.bg-blend-difference {
  background-blend-mode: difference
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_blend_difference : Css.Style
bg_blend_difference =
    Css.property "background-blend-mode" "difference"


{-| This class has the effect of following css declaration:

```css
.bg-blend-exclusion {
  background-blend-mode: exclusion
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_blend_exclusion : Css.Style
bg_blend_exclusion =
    Css.property "background-blend-mode" "exclusion"


{-| This class has the effect of following css declaration:

```css
.bg-blend-hard-light {
  background-blend-mode: hard-light
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_blend_hard_light : Css.Style
bg_blend_hard_light =
    Css.property "background-blend-mode" "hard-light"


{-| This class has the effect of following css declaration:

```css
.bg-blend-hue {
  background-blend-mode: hue
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_blend_hue : Css.Style
bg_blend_hue =
    Css.property "background-blend-mode" "hue"


{-| This class has the effect of following css declaration:

```css
.bg-blend-lighten {
  background-blend-mode: lighten
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_blend_lighten : Css.Style
bg_blend_lighten =
    Css.property "background-blend-mode" "lighten"


{-| This class has the effect of following css declaration:

```css
.bg-blend-luminosity {
  background-blend-mode: luminosity
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_blend_luminosity : Css.Style
bg_blend_luminosity =
    Css.property "background-blend-mode" "luminosity"


{-| This class has the effect of following css declaration:

```css
.bg-blend-multiply {
  background-blend-mode: multiply
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_blend_multiply : Css.Style
bg_blend_multiply =
    Css.property "background-blend-mode" "multiply"


{-| This class has the effect of following css declaration:

```css
.bg-blend-normal {
  background-blend-mode: normal
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_blend_normal : Css.Style
bg_blend_normal =
    Css.property "background-blend-mode" "normal"


{-| This class has the effect of following css declaration:

```css
.bg-blend-overlay {
  background-blend-mode: overlay
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_blend_overlay : Css.Style
bg_blend_overlay =
    Css.property "background-blend-mode" "overlay"


{-| This class has the effect of following css declaration:

```css
.bg-blend-saturation {
  background-blend-mode: saturation
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_blend_saturation : Css.Style
bg_blend_saturation =
    Css.property "background-blend-mode" "saturation"


{-| This class has the effect of following css declaration:

```css
.bg-blend-screen {
  background-blend-mode: screen
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_blend_screen : Css.Style
bg_blend_screen =
    Css.property "background-blend-mode" "screen"


{-| This class has the effect of following css declaration:

```css
.bg-blend-soft-light {
  background-blend-mode: soft-light
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_blend_soft_light : Css.Style
bg_blend_soft_light =
    Css.property "background-blend-mode" "soft-light"


{-| This class has the effect of following css declaration:

```css
.bg-blue-100 {
  --tw-bg-opacity: 1;
  background-color: rgba(235, 248, 255, var(--tw-bg-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_blue_100 : Css.Style
bg_blue_100 =
    Css.batch
        [ Css.property "--tw-bg-opacity" "1"
        , Css.property "background-color" "rgba(235, 248, 255, var(--tw-bg-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.bg-blue-200 {
  --tw-bg-opacity: 1;
  background-color: rgba(190, 227, 248, var(--tw-bg-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_blue_200 : Css.Style
bg_blue_200 =
    Css.batch
        [ Css.property "--tw-bg-opacity" "1"
        , Css.property "background-color" "rgba(190, 227, 248, var(--tw-bg-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.bg-blue-300 {
  --tw-bg-opacity: 1;
  background-color: rgba(144, 205, 244, var(--tw-bg-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_blue_300 : Css.Style
bg_blue_300 =
    Css.batch
        [ Css.property "--tw-bg-opacity" "1"
        , Css.property "background-color" "rgba(144, 205, 244, var(--tw-bg-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.bg-blue-400 {
  --tw-bg-opacity: 1;
  background-color: rgba(99, 179, 237, var(--tw-bg-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_blue_400 : Css.Style
bg_blue_400 =
    Css.batch
        [ Css.property "--tw-bg-opacity" "1"
        , Css.property "background-color" "rgba(99, 179, 237, var(--tw-bg-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.bg-blue-500 {
  --tw-bg-opacity: 1;
  background-color: rgba(66, 153, 225, var(--tw-bg-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_blue_500 : Css.Style
bg_blue_500 =
    Css.batch
        [ Css.property "--tw-bg-opacity" "1"
        , Css.property "background-color" "rgba(66, 153, 225, var(--tw-bg-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.bg-blue-600 {
  --tw-bg-opacity: 1;
  background-color: rgba(49, 130, 206, var(--tw-bg-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_blue_600 : Css.Style
bg_blue_600 =
    Css.batch
        [ Css.property "--tw-bg-opacity" "1"
        , Css.property "background-color" "rgba(49, 130, 206, var(--tw-bg-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.bg-blue-700 {
  --tw-bg-opacity: 1;
  background-color: rgba(43, 108, 176, var(--tw-bg-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_blue_700 : Css.Style
bg_blue_700 =
    Css.batch
        [ Css.property "--tw-bg-opacity" "1"
        , Css.property "background-color" "rgba(43, 108, 176, var(--tw-bg-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.bg-blue-800 {
  --tw-bg-opacity: 1;
  background-color: rgba(44, 82, 130, var(--tw-bg-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_blue_800 : Css.Style
bg_blue_800 =
    Css.batch
        [ Css.property "--tw-bg-opacity" "1"
        , Css.property "background-color" "rgba(44, 82, 130, var(--tw-bg-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.bg-blue-900 {
  --tw-bg-opacity: 1;
  background-color: rgba(42, 67, 101, var(--tw-bg-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_blue_900 : Css.Style
bg_blue_900 =
    Css.batch
        [ Css.property "--tw-bg-opacity" "1"
        , Css.property "background-color" "rgba(42, 67, 101, var(--tw-bg-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.bg-bottom {
  background-position: bottom
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_bottom : Css.Style
bg_bottom =
    Css.property "background-position" "bottom"


{-| This class has the effect of following css declaration:

```css
.bg-center {
  background-position: center
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_center : Css.Style
bg_center =
    Css.property "background-position" "center"


{-| This class has the effect of following css declaration:

```css
.bg-clip-border {
  background-clip: border-box
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_clip_border : Css.Style
bg_clip_border =
    Css.property "background-clip" "border-box"


{-| This class has the effect of following css declaration:

```css
.bg-clip-content {
  background-clip: content-box
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_clip_content : Css.Style
bg_clip_content =
    Css.property "background-clip" "content-box"


{-| This class has the effect of following css declaration:

```css
.bg-clip-padding {
  background-clip: padding-box
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_clip_padding : Css.Style
bg_clip_padding =
    Css.property "background-clip" "padding-box"


{-| This class has the effect of following css declaration:

```css
.bg-clip-text {
  background-clip: text
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_clip_text : Css.Style
bg_clip_text =
    Css.property "background-clip" "text"


{-| This class has the effect of following css declaration:

```css
.bg-contain {
  background-size: contain
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_contain : Css.Style
bg_contain =
    Css.property "background-size" "contain"


{-| This class has the effect of following css declaration:

```css
.bg-cover {
  background-size: cover
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_cover : Css.Style
bg_cover =
    Css.property "background-size" "cover"


{-| This class has the effect of following css declaration:

```css
.bg-current {
  background-color: currentColor
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_current : Css.Style
bg_current =
    Css.property "background-color" "currentColor"


{-| This class has the effect of following css declaration:

```css
.bg-fixed {
  background-attachment: fixed
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_fixed : Css.Style
bg_fixed =
    Css.property "background-attachment" "fixed"


{-| This class has the effect of following css declaration:

```css
.bg-gradient-to-b {
  background-image: linear-gradient(to bottom, var(--tw-gradient-stops))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_gradient_to_b : Css.Style
bg_gradient_to_b =
    Css.property "background-image" "linear-gradient(to bottom, var(--tw-gradient-stops))"


{-| This class has the effect of following css declaration:

```css
.bg-gradient-to-bl {
  background-image: linear-gradient(to bottom left, var(--tw-gradient-stops))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_gradient_to_bl : Css.Style
bg_gradient_to_bl =
    Css.property "background-image" "linear-gradient(to bottom left, var(--tw-gradient-stops))"


{-| This class has the effect of following css declaration:

```css
.bg-gradient-to-br {
  background-image: linear-gradient(to bottom right, var(--tw-gradient-stops))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_gradient_to_br : Css.Style
bg_gradient_to_br =
    Css.property "background-image" "linear-gradient(to bottom right, var(--tw-gradient-stops))"


{-| This class has the effect of following css declaration:

```css
.bg-gradient-to-l {
  background-image: linear-gradient(to left, var(--tw-gradient-stops))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_gradient_to_l : Css.Style
bg_gradient_to_l =
    Css.property "background-image" "linear-gradient(to left, var(--tw-gradient-stops))"


{-| This class has the effect of following css declaration:

```css
.bg-gradient-to-r {
  background-image: linear-gradient(to right, var(--tw-gradient-stops))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_gradient_to_r : Css.Style
bg_gradient_to_r =
    Css.property "background-image" "linear-gradient(to right, var(--tw-gradient-stops))"


{-| This class has the effect of following css declaration:

```css
.bg-gradient-to-t {
  background-image: linear-gradient(to top, var(--tw-gradient-stops))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_gradient_to_t : Css.Style
bg_gradient_to_t =
    Css.property "background-image" "linear-gradient(to top, var(--tw-gradient-stops))"


{-| This class has the effect of following css declaration:

```css
.bg-gradient-to-tl {
  background-image: linear-gradient(to top left, var(--tw-gradient-stops))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_gradient_to_tl : Css.Style
bg_gradient_to_tl =
    Css.property "background-image" "linear-gradient(to top left, var(--tw-gradient-stops))"


{-| This class has the effect of following css declaration:

```css
.bg-gradient-to-tr {
  background-image: linear-gradient(to top right, var(--tw-gradient-stops))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_gradient_to_tr : Css.Style
bg_gradient_to_tr =
    Css.property "background-image" "linear-gradient(to top right, var(--tw-gradient-stops))"


{-| This class has the effect of following css declaration:

```css
.bg-gray-100 {
  --tw-bg-opacity: 1;
  background-color: rgba(247, 250, 252, var(--tw-bg-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_gray_100 : Css.Style
bg_gray_100 =
    Css.batch
        [ Css.property "--tw-bg-opacity" "1"
        , Css.property "background-color" "rgba(247, 250, 252, var(--tw-bg-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.bg-gray-200 {
  --tw-bg-opacity: 1;
  background-color: rgba(237, 242, 247, var(--tw-bg-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_gray_200 : Css.Style
bg_gray_200 =
    Css.batch
        [ Css.property "--tw-bg-opacity" "1"
        , Css.property "background-color" "rgba(237, 242, 247, var(--tw-bg-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.bg-gray-300 {
  --tw-bg-opacity: 1;
  background-color: rgba(226, 232, 240, var(--tw-bg-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_gray_300 : Css.Style
bg_gray_300 =
    Css.batch
        [ Css.property "--tw-bg-opacity" "1"
        , Css.property "background-color" "rgba(226, 232, 240, var(--tw-bg-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.bg-gray-400 {
  --tw-bg-opacity: 1;
  background-color: rgba(203, 213, 224, var(--tw-bg-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_gray_400 : Css.Style
bg_gray_400 =
    Css.batch
        [ Css.property "--tw-bg-opacity" "1"
        , Css.property "background-color" "rgba(203, 213, 224, var(--tw-bg-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.bg-gray-500 {
  --tw-bg-opacity: 1;
  background-color: rgba(160, 174, 192, var(--tw-bg-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_gray_500 : Css.Style
bg_gray_500 =
    Css.batch
        [ Css.property "--tw-bg-opacity" "1"
        , Css.property "background-color" "rgba(160, 174, 192, var(--tw-bg-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.bg-gray-600 {
  --tw-bg-opacity: 1;
  background-color: rgba(113, 128, 150, var(--tw-bg-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_gray_600 : Css.Style
bg_gray_600 =
    Css.batch
        [ Css.property "--tw-bg-opacity" "1"
        , Css.property "background-color" "rgba(113, 128, 150, var(--tw-bg-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.bg-gray-700 {
  --tw-bg-opacity: 1;
  background-color: rgba(74, 85, 104, var(--tw-bg-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_gray_700 : Css.Style
bg_gray_700 =
    Css.batch
        [ Css.property "--tw-bg-opacity" "1"
        , Css.property "background-color" "rgba(74, 85, 104, var(--tw-bg-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.bg-gray-800 {
  --tw-bg-opacity: 1;
  background-color: rgba(45, 55, 72, var(--tw-bg-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_gray_800 : Css.Style
bg_gray_800 =
    Css.batch
        [ Css.property "--tw-bg-opacity" "1"
        , Css.property "background-color" "rgba(45, 55, 72, var(--tw-bg-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.bg-gray-900 {
  --tw-bg-opacity: 1;
  background-color: rgba(26, 32, 44, var(--tw-bg-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_gray_900 : Css.Style
bg_gray_900 =
    Css.batch
        [ Css.property "--tw-bg-opacity" "1"
        , Css.property "background-color" "rgba(26, 32, 44, var(--tw-bg-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.bg-green-100 {
  --tw-bg-opacity: 1;
  background-color: rgba(240, 255, 244, var(--tw-bg-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_green_100 : Css.Style
bg_green_100 =
    Css.batch
        [ Css.property "--tw-bg-opacity" "1"
        , Css.property "background-color" "rgba(240, 255, 244, var(--tw-bg-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.bg-green-200 {
  --tw-bg-opacity: 1;
  background-color: rgba(198, 246, 213, var(--tw-bg-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_green_200 : Css.Style
bg_green_200 =
    Css.batch
        [ Css.property "--tw-bg-opacity" "1"
        , Css.property "background-color" "rgba(198, 246, 213, var(--tw-bg-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.bg-green-300 {
  --tw-bg-opacity: 1;
  background-color: rgba(154, 230, 180, var(--tw-bg-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_green_300 : Css.Style
bg_green_300 =
    Css.batch
        [ Css.property "--tw-bg-opacity" "1"
        , Css.property "background-color" "rgba(154, 230, 180, var(--tw-bg-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.bg-green-400 {
  --tw-bg-opacity: 1;
  background-color: rgba(104, 211, 145, var(--tw-bg-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_green_400 : Css.Style
bg_green_400 =
    Css.batch
        [ Css.property "--tw-bg-opacity" "1"
        , Css.property "background-color" "rgba(104, 211, 145, var(--tw-bg-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.bg-green-500 {
  --tw-bg-opacity: 1;
  background-color: rgba(72, 187, 120, var(--tw-bg-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_green_500 : Css.Style
bg_green_500 =
    Css.batch
        [ Css.property "--tw-bg-opacity" "1"
        , Css.property "background-color" "rgba(72, 187, 120, var(--tw-bg-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.bg-green-600 {
  --tw-bg-opacity: 1;
  background-color: rgba(56, 161, 105, var(--tw-bg-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_green_600 : Css.Style
bg_green_600 =
    Css.batch
        [ Css.property "--tw-bg-opacity" "1"
        , Css.property "background-color" "rgba(56, 161, 105, var(--tw-bg-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.bg-green-700 {
  --tw-bg-opacity: 1;
  background-color: rgba(47, 133, 90, var(--tw-bg-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_green_700 : Css.Style
bg_green_700 =
    Css.batch
        [ Css.property "--tw-bg-opacity" "1"
        , Css.property "background-color" "rgba(47, 133, 90, var(--tw-bg-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.bg-green-800 {
  --tw-bg-opacity: 1;
  background-color: rgba(39, 103, 73, var(--tw-bg-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_green_800 : Css.Style
bg_green_800 =
    Css.batch
        [ Css.property "--tw-bg-opacity" "1"
        , Css.property "background-color" "rgba(39, 103, 73, var(--tw-bg-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.bg-green-900 {
  --tw-bg-opacity: 1;
  background-color: rgba(34, 84, 61, var(--tw-bg-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_green_900 : Css.Style
bg_green_900 =
    Css.batch
        [ Css.property "--tw-bg-opacity" "1"
        , Css.property "background-color" "rgba(34, 84, 61, var(--tw-bg-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.bg-indigo-100 {
  --tw-bg-opacity: 1;
  background-color: rgba(235, 244, 255, var(--tw-bg-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_indigo_100 : Css.Style
bg_indigo_100 =
    Css.batch
        [ Css.property "--tw-bg-opacity" "1"
        , Css.property "background-color" "rgba(235, 244, 255, var(--tw-bg-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.bg-indigo-200 {
  --tw-bg-opacity: 1;
  background-color: rgba(195, 218, 254, var(--tw-bg-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_indigo_200 : Css.Style
bg_indigo_200 =
    Css.batch
        [ Css.property "--tw-bg-opacity" "1"
        , Css.property "background-color" "rgba(195, 218, 254, var(--tw-bg-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.bg-indigo-300 {
  --tw-bg-opacity: 1;
  background-color: rgba(163, 191, 250, var(--tw-bg-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_indigo_300 : Css.Style
bg_indigo_300 =
    Css.batch
        [ Css.property "--tw-bg-opacity" "1"
        , Css.property "background-color" "rgba(163, 191, 250, var(--tw-bg-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.bg-indigo-400 {
  --tw-bg-opacity: 1;
  background-color: rgba(127, 156, 245, var(--tw-bg-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_indigo_400 : Css.Style
bg_indigo_400 =
    Css.batch
        [ Css.property "--tw-bg-opacity" "1"
        , Css.property "background-color" "rgba(127, 156, 245, var(--tw-bg-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.bg-indigo-500 {
  --tw-bg-opacity: 1;
  background-color: rgba(102, 126, 234, var(--tw-bg-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_indigo_500 : Css.Style
bg_indigo_500 =
    Css.batch
        [ Css.property "--tw-bg-opacity" "1"
        , Css.property "background-color" "rgba(102, 126, 234, var(--tw-bg-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.bg-indigo-600 {
  --tw-bg-opacity: 1;
  background-color: rgba(90, 103, 216, var(--tw-bg-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_indigo_600 : Css.Style
bg_indigo_600 =
    Css.batch
        [ Css.property "--tw-bg-opacity" "1"
        , Css.property "background-color" "rgba(90, 103, 216, var(--tw-bg-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.bg-indigo-700 {
  --tw-bg-opacity: 1;
  background-color: rgba(76, 81, 191, var(--tw-bg-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_indigo_700 : Css.Style
bg_indigo_700 =
    Css.batch
        [ Css.property "--tw-bg-opacity" "1"
        , Css.property "background-color" "rgba(76, 81, 191, var(--tw-bg-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.bg-indigo-800 {
  --tw-bg-opacity: 1;
  background-color: rgba(67, 65, 144, var(--tw-bg-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_indigo_800 : Css.Style
bg_indigo_800 =
    Css.batch
        [ Css.property "--tw-bg-opacity" "1"
        , Css.property "background-color" "rgba(67, 65, 144, var(--tw-bg-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.bg-indigo-900 {
  --tw-bg-opacity: 1;
  background-color: rgba(60, 54, 107, var(--tw-bg-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_indigo_900 : Css.Style
bg_indigo_900 =
    Css.batch
        [ Css.property "--tw-bg-opacity" "1"
        , Css.property "background-color" "rgba(60, 54, 107, var(--tw-bg-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.bg-left {
  background-position: left
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_left : Css.Style
bg_left =
    Css.property "background-position" "left"


{-| This class has the effect of following css declaration:

```css
.bg-left-bottom {
  background-position: left bottom
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_left_bottom : Css.Style
bg_left_bottom =
    Css.property "background-position" "left bottom"


{-| This class has the effect of following css declaration:

```css
.bg-left-top {
  background-position: left top
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_left_top : Css.Style
bg_left_top =
    Css.property "background-position" "left top"


{-| This class has the effect of following css declaration:

```css
.bg-local {
  background-attachment: local
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_local : Css.Style
bg_local =
    Css.property "background-attachment" "local"


{-| This class has the effect of following css declaration:

```css
.bg-no-repeat {
  background-repeat: no-repeat
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_no_repeat : Css.Style
bg_no_repeat =
    Css.property "background-repeat" "no-repeat"


{-| This class has the effect of following css declaration:

```css
.bg-none {
  background-image: none
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_none : Css.Style
bg_none =
    Css.property "background-image" "none"


{-| This class has the effect of following css declaration:

```css
.bg-opacity-0 {
  --tw-bg-opacity: 0
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_opacity_0 : Css.Style
bg_opacity_0 =
    Css.property "--tw-bg-opacity" "0"


{-| This class has the effect of following css declaration:

```css
.bg-opacity-10 {
  --tw-bg-opacity: 0.1
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_opacity_10 : Css.Style
bg_opacity_10 =
    Css.property "--tw-bg-opacity" "0.1"


{-| This class has the effect of following css declaration:

```css
.bg-opacity-100 {
  --tw-bg-opacity: 1
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_opacity_100 : Css.Style
bg_opacity_100 =
    Css.property "--tw-bg-opacity" "1"


{-| This class has the effect of following css declaration:

```css
.bg-opacity-20 {
  --tw-bg-opacity: 0.2
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_opacity_20 : Css.Style
bg_opacity_20 =
    Css.property "--tw-bg-opacity" "0.2"


{-| This class has the effect of following css declaration:

```css
.bg-opacity-25 {
  --tw-bg-opacity: 0.25
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_opacity_25 : Css.Style
bg_opacity_25 =
    Css.property "--tw-bg-opacity" "0.25"


{-| This class has the effect of following css declaration:

```css
.bg-opacity-30 {
  --tw-bg-opacity: 0.3
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_opacity_30 : Css.Style
bg_opacity_30 =
    Css.property "--tw-bg-opacity" "0.3"


{-| This class has the effect of following css declaration:

```css
.bg-opacity-40 {
  --tw-bg-opacity: 0.4
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_opacity_40 : Css.Style
bg_opacity_40 =
    Css.property "--tw-bg-opacity" "0.4"


{-| This class has the effect of following css declaration:

```css
.bg-opacity-5 {
  --tw-bg-opacity: 0.05
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_opacity_5 : Css.Style
bg_opacity_5 =
    Css.property "--tw-bg-opacity" "0.05"


{-| This class has the effect of following css declaration:

```css
.bg-opacity-50 {
  --tw-bg-opacity: 0.5
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_opacity_50 : Css.Style
bg_opacity_50 =
    Css.property "--tw-bg-opacity" "0.5"


{-| This class has the effect of following css declaration:

```css
.bg-opacity-60 {
  --tw-bg-opacity: 0.6
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_opacity_60 : Css.Style
bg_opacity_60 =
    Css.property "--tw-bg-opacity" "0.6"


{-| This class has the effect of following css declaration:

```css
.bg-opacity-70 {
  --tw-bg-opacity: 0.7
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_opacity_70 : Css.Style
bg_opacity_70 =
    Css.property "--tw-bg-opacity" "0.7"


{-| This class has the effect of following css declaration:

```css
.bg-opacity-75 {
  --tw-bg-opacity: 0.75
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_opacity_75 : Css.Style
bg_opacity_75 =
    Css.property "--tw-bg-opacity" "0.75"


{-| This class has the effect of following css declaration:

```css
.bg-opacity-80 {
  --tw-bg-opacity: 0.8
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_opacity_80 : Css.Style
bg_opacity_80 =
    Css.property "--tw-bg-opacity" "0.8"


{-| This class has the effect of following css declaration:

```css
.bg-opacity-90 {
  --tw-bg-opacity: 0.9
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_opacity_90 : Css.Style
bg_opacity_90 =
    Css.property "--tw-bg-opacity" "0.9"


{-| This class has the effect of following css declaration:

```css
.bg-opacity-95 {
  --tw-bg-opacity: 0.95
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_opacity_95 : Css.Style
bg_opacity_95 =
    Css.property "--tw-bg-opacity" "0.95"


{-| This class has the effect of following css declaration:

```css
.bg-orange-100 {
  --tw-bg-opacity: 1;
  background-color: rgba(255, 250, 240, var(--tw-bg-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_orange_100 : Css.Style
bg_orange_100 =
    Css.batch
        [ Css.property "--tw-bg-opacity" "1"
        , Css.property "background-color" "rgba(255, 250, 240, var(--tw-bg-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.bg-orange-200 {
  --tw-bg-opacity: 1;
  background-color: rgba(254, 235, 200, var(--tw-bg-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_orange_200 : Css.Style
bg_orange_200 =
    Css.batch
        [ Css.property "--tw-bg-opacity" "1"
        , Css.property "background-color" "rgba(254, 235, 200, var(--tw-bg-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.bg-orange-300 {
  --tw-bg-opacity: 1;
  background-color: rgba(251, 211, 141, var(--tw-bg-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_orange_300 : Css.Style
bg_orange_300 =
    Css.batch
        [ Css.property "--tw-bg-opacity" "1"
        , Css.property "background-color" "rgba(251, 211, 141, var(--tw-bg-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.bg-orange-400 {
  --tw-bg-opacity: 1;
  background-color: rgba(246, 173, 85, var(--tw-bg-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_orange_400 : Css.Style
bg_orange_400 =
    Css.batch
        [ Css.property "--tw-bg-opacity" "1"
        , Css.property "background-color" "rgba(246, 173, 85, var(--tw-bg-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.bg-orange-500 {
  --tw-bg-opacity: 1;
  background-color: rgba(237, 137, 54, var(--tw-bg-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_orange_500 : Css.Style
bg_orange_500 =
    Css.batch
        [ Css.property "--tw-bg-opacity" "1"
        , Css.property "background-color" "rgba(237, 137, 54, var(--tw-bg-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.bg-orange-600 {
  --tw-bg-opacity: 1;
  background-color: rgba(221, 107, 32, var(--tw-bg-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_orange_600 : Css.Style
bg_orange_600 =
    Css.batch
        [ Css.property "--tw-bg-opacity" "1"
        , Css.property "background-color" "rgba(221, 107, 32, var(--tw-bg-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.bg-orange-700 {
  --tw-bg-opacity: 1;
  background-color: rgba(192, 86, 33, var(--tw-bg-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_orange_700 : Css.Style
bg_orange_700 =
    Css.batch
        [ Css.property "--tw-bg-opacity" "1"
        , Css.property "background-color" "rgba(192, 86, 33, var(--tw-bg-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.bg-orange-800 {
  --tw-bg-opacity: 1;
  background-color: rgba(156, 66, 33, var(--tw-bg-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_orange_800 : Css.Style
bg_orange_800 =
    Css.batch
        [ Css.property "--tw-bg-opacity" "1"
        , Css.property "background-color" "rgba(156, 66, 33, var(--tw-bg-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.bg-orange-900 {
  --tw-bg-opacity: 1;
  background-color: rgba(123, 52, 30, var(--tw-bg-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_orange_900 : Css.Style
bg_orange_900 =
    Css.batch
        [ Css.property "--tw-bg-opacity" "1"
        , Css.property "background-color" "rgba(123, 52, 30, var(--tw-bg-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.bg-pink-100 {
  --tw-bg-opacity: 1;
  background-color: rgba(255, 245, 247, var(--tw-bg-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_pink_100 : Css.Style
bg_pink_100 =
    Css.batch
        [ Css.property "--tw-bg-opacity" "1"
        , Css.property "background-color" "rgba(255, 245, 247, var(--tw-bg-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.bg-pink-200 {
  --tw-bg-opacity: 1;
  background-color: rgba(254, 215, 226, var(--tw-bg-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_pink_200 : Css.Style
bg_pink_200 =
    Css.batch
        [ Css.property "--tw-bg-opacity" "1"
        , Css.property "background-color" "rgba(254, 215, 226, var(--tw-bg-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.bg-pink-300 {
  --tw-bg-opacity: 1;
  background-color: rgba(251, 182, 206, var(--tw-bg-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_pink_300 : Css.Style
bg_pink_300 =
    Css.batch
        [ Css.property "--tw-bg-opacity" "1"
        , Css.property "background-color" "rgba(251, 182, 206, var(--tw-bg-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.bg-pink-400 {
  --tw-bg-opacity: 1;
  background-color: rgba(246, 135, 179, var(--tw-bg-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_pink_400 : Css.Style
bg_pink_400 =
    Css.batch
        [ Css.property "--tw-bg-opacity" "1"
        , Css.property "background-color" "rgba(246, 135, 179, var(--tw-bg-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.bg-pink-500 {
  --tw-bg-opacity: 1;
  background-color: rgba(237, 100, 166, var(--tw-bg-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_pink_500 : Css.Style
bg_pink_500 =
    Css.batch
        [ Css.property "--tw-bg-opacity" "1"
        , Css.property "background-color" "rgba(237, 100, 166, var(--tw-bg-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.bg-pink-600 {
  --tw-bg-opacity: 1;
  background-color: rgba(213, 63, 140, var(--tw-bg-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_pink_600 : Css.Style
bg_pink_600 =
    Css.batch
        [ Css.property "--tw-bg-opacity" "1"
        , Css.property "background-color" "rgba(213, 63, 140, var(--tw-bg-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.bg-pink-700 {
  --tw-bg-opacity: 1;
  background-color: rgba(184, 50, 128, var(--tw-bg-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_pink_700 : Css.Style
bg_pink_700 =
    Css.batch
        [ Css.property "--tw-bg-opacity" "1"
        , Css.property "background-color" "rgba(184, 50, 128, var(--tw-bg-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.bg-pink-800 {
  --tw-bg-opacity: 1;
  background-color: rgba(151, 38, 109, var(--tw-bg-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_pink_800 : Css.Style
bg_pink_800 =
    Css.batch
        [ Css.property "--tw-bg-opacity" "1"
        , Css.property "background-color" "rgba(151, 38, 109, var(--tw-bg-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.bg-pink-900 {
  --tw-bg-opacity: 1;
  background-color: rgba(112, 36, 89, var(--tw-bg-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_pink_900 : Css.Style
bg_pink_900 =
    Css.batch
        [ Css.property "--tw-bg-opacity" "1"
        , Css.property "background-color" "rgba(112, 36, 89, var(--tw-bg-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.bg-purple-100 {
  --tw-bg-opacity: 1;
  background-color: rgba(250, 245, 255, var(--tw-bg-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_purple_100 : Css.Style
bg_purple_100 =
    Css.batch
        [ Css.property "--tw-bg-opacity" "1"
        , Css.property "background-color" "rgba(250, 245, 255, var(--tw-bg-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.bg-purple-200 {
  --tw-bg-opacity: 1;
  background-color: rgba(233, 216, 253, var(--tw-bg-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_purple_200 : Css.Style
bg_purple_200 =
    Css.batch
        [ Css.property "--tw-bg-opacity" "1"
        , Css.property "background-color" "rgba(233, 216, 253, var(--tw-bg-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.bg-purple-300 {
  --tw-bg-opacity: 1;
  background-color: rgba(214, 188, 250, var(--tw-bg-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_purple_300 : Css.Style
bg_purple_300 =
    Css.batch
        [ Css.property "--tw-bg-opacity" "1"
        , Css.property "background-color" "rgba(214, 188, 250, var(--tw-bg-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.bg-purple-400 {
  --tw-bg-opacity: 1;
  background-color: rgba(183, 148, 244, var(--tw-bg-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_purple_400 : Css.Style
bg_purple_400 =
    Css.batch
        [ Css.property "--tw-bg-opacity" "1"
        , Css.property "background-color" "rgba(183, 148, 244, var(--tw-bg-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.bg-purple-500 {
  --tw-bg-opacity: 1;
  background-color: rgba(159, 122, 234, var(--tw-bg-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_purple_500 : Css.Style
bg_purple_500 =
    Css.batch
        [ Css.property "--tw-bg-opacity" "1"
        , Css.property "background-color" "rgba(159, 122, 234, var(--tw-bg-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.bg-purple-600 {
  --tw-bg-opacity: 1;
  background-color: rgba(128, 90, 213, var(--tw-bg-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_purple_600 : Css.Style
bg_purple_600 =
    Css.batch
        [ Css.property "--tw-bg-opacity" "1"
        , Css.property "background-color" "rgba(128, 90, 213, var(--tw-bg-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.bg-purple-700 {
  --tw-bg-opacity: 1;
  background-color: rgba(107, 70, 193, var(--tw-bg-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_purple_700 : Css.Style
bg_purple_700 =
    Css.batch
        [ Css.property "--tw-bg-opacity" "1"
        , Css.property "background-color" "rgba(107, 70, 193, var(--tw-bg-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.bg-purple-800 {
  --tw-bg-opacity: 1;
  background-color: rgba(85, 60, 154, var(--tw-bg-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_purple_800 : Css.Style
bg_purple_800 =
    Css.batch
        [ Css.property "--tw-bg-opacity" "1"
        , Css.property "background-color" "rgba(85, 60, 154, var(--tw-bg-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.bg-purple-900 {
  --tw-bg-opacity: 1;
  background-color: rgba(68, 51, 122, var(--tw-bg-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_purple_900 : Css.Style
bg_purple_900 =
    Css.batch
        [ Css.property "--tw-bg-opacity" "1"
        , Css.property "background-color" "rgba(68, 51, 122, var(--tw-bg-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.bg-red-100 {
  --tw-bg-opacity: 1;
  background-color: rgba(255, 245, 245, var(--tw-bg-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_red_100 : Css.Style
bg_red_100 =
    Css.batch
        [ Css.property "--tw-bg-opacity" "1"
        , Css.property "background-color" "rgba(255, 245, 245, var(--tw-bg-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.bg-red-200 {
  --tw-bg-opacity: 1;
  background-color: rgba(254, 215, 215, var(--tw-bg-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_red_200 : Css.Style
bg_red_200 =
    Css.batch
        [ Css.property "--tw-bg-opacity" "1"
        , Css.property "background-color" "rgba(254, 215, 215, var(--tw-bg-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.bg-red-300 {
  --tw-bg-opacity: 1;
  background-color: rgba(254, 178, 178, var(--tw-bg-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_red_300 : Css.Style
bg_red_300 =
    Css.batch
        [ Css.property "--tw-bg-opacity" "1"
        , Css.property "background-color" "rgba(254, 178, 178, var(--tw-bg-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.bg-red-400 {
  --tw-bg-opacity: 1;
  background-color: rgba(252, 129, 129, var(--tw-bg-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_red_400 : Css.Style
bg_red_400 =
    Css.batch
        [ Css.property "--tw-bg-opacity" "1"
        , Css.property "background-color" "rgba(252, 129, 129, var(--tw-bg-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.bg-red-500 {
  --tw-bg-opacity: 1;
  background-color: rgba(245, 101, 101, var(--tw-bg-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_red_500 : Css.Style
bg_red_500 =
    Css.batch
        [ Css.property "--tw-bg-opacity" "1"
        , Css.property "background-color" "rgba(245, 101, 101, var(--tw-bg-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.bg-red-600 {
  --tw-bg-opacity: 1;
  background-color: rgba(229, 62, 62, var(--tw-bg-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_red_600 : Css.Style
bg_red_600 =
    Css.batch
        [ Css.property "--tw-bg-opacity" "1"
        , Css.property "background-color" "rgba(229, 62, 62, var(--tw-bg-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.bg-red-700 {
  --tw-bg-opacity: 1;
  background-color: rgba(197, 48, 48, var(--tw-bg-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_red_700 : Css.Style
bg_red_700 =
    Css.batch
        [ Css.property "--tw-bg-opacity" "1"
        , Css.property "background-color" "rgba(197, 48, 48, var(--tw-bg-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.bg-red-800 {
  --tw-bg-opacity: 1;
  background-color: rgba(155, 44, 44, var(--tw-bg-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_red_800 : Css.Style
bg_red_800 =
    Css.batch
        [ Css.property "--tw-bg-opacity" "1"
        , Css.property "background-color" "rgba(155, 44, 44, var(--tw-bg-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.bg-red-900 {
  --tw-bg-opacity: 1;
  background-color: rgba(116, 42, 42, var(--tw-bg-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_red_900 : Css.Style
bg_red_900 =
    Css.batch
        [ Css.property "--tw-bg-opacity" "1"
        , Css.property "background-color" "rgba(116, 42, 42, var(--tw-bg-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.bg-repeat {
  background-repeat: repeat
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_repeat : Css.Style
bg_repeat =
    Css.property "background-repeat" "repeat"


{-| This class has the effect of following css declaration:

```css
.bg-repeat-round {
  background-repeat: round
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_repeat_round : Css.Style
bg_repeat_round =
    Css.property "background-repeat" "round"


{-| This class has the effect of following css declaration:

```css
.bg-repeat-space {
  background-repeat: space
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_repeat_space : Css.Style
bg_repeat_space =
    Css.property "background-repeat" "space"


{-| This class has the effect of following css declaration:

```css
.bg-repeat-x {
  background-repeat: repeat-x
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_repeat_x : Css.Style
bg_repeat_x =
    Css.property "background-repeat" "repeat-x"


{-| This class has the effect of following css declaration:

```css
.bg-repeat-y {
  background-repeat: repeat-y
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_repeat_y : Css.Style
bg_repeat_y =
    Css.property "background-repeat" "repeat-y"


{-| This class has the effect of following css declaration:

```css
.bg-right {
  background-position: right
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_right : Css.Style
bg_right =
    Css.property "background-position" "right"


{-| This class has the effect of following css declaration:

```css
.bg-right-bottom {
  background-position: right bottom
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_right_bottom : Css.Style
bg_right_bottom =
    Css.property "background-position" "right bottom"


{-| This class has the effect of following css declaration:

```css
.bg-right-top {
  background-position: right top
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_right_top : Css.Style
bg_right_top =
    Css.property "background-position" "right top"


{-| This class has the effect of following css declaration:

```css
.bg-scroll {
  background-attachment: scroll
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_scroll : Css.Style
bg_scroll =
    Css.property "background-attachment" "scroll"


{-| This class has the effect of following css declaration:

```css
.bg-teal-100 {
  --tw-bg-opacity: 1;
  background-color: rgba(230, 255, 250, var(--tw-bg-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_teal_100 : Css.Style
bg_teal_100 =
    Css.batch
        [ Css.property "--tw-bg-opacity" "1"
        , Css.property "background-color" "rgba(230, 255, 250, var(--tw-bg-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.bg-teal-200 {
  --tw-bg-opacity: 1;
  background-color: rgba(178, 245, 234, var(--tw-bg-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_teal_200 : Css.Style
bg_teal_200 =
    Css.batch
        [ Css.property "--tw-bg-opacity" "1"
        , Css.property "background-color" "rgba(178, 245, 234, var(--tw-bg-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.bg-teal-300 {
  --tw-bg-opacity: 1;
  background-color: rgba(129, 230, 217, var(--tw-bg-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_teal_300 : Css.Style
bg_teal_300 =
    Css.batch
        [ Css.property "--tw-bg-opacity" "1"
        , Css.property "background-color" "rgba(129, 230, 217, var(--tw-bg-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.bg-teal-400 {
  --tw-bg-opacity: 1;
  background-color: rgba(79, 209, 197, var(--tw-bg-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_teal_400 : Css.Style
bg_teal_400 =
    Css.batch
        [ Css.property "--tw-bg-opacity" "1"
        , Css.property "background-color" "rgba(79, 209, 197, var(--tw-bg-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.bg-teal-500 {
  --tw-bg-opacity: 1;
  background-color: rgba(56, 178, 172, var(--tw-bg-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_teal_500 : Css.Style
bg_teal_500 =
    Css.batch
        [ Css.property "--tw-bg-opacity" "1"
        , Css.property "background-color" "rgba(56, 178, 172, var(--tw-bg-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.bg-teal-600 {
  --tw-bg-opacity: 1;
  background-color: rgba(49, 151, 149, var(--tw-bg-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_teal_600 : Css.Style
bg_teal_600 =
    Css.batch
        [ Css.property "--tw-bg-opacity" "1"
        , Css.property "background-color" "rgba(49, 151, 149, var(--tw-bg-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.bg-teal-700 {
  --tw-bg-opacity: 1;
  background-color: rgba(44, 122, 123, var(--tw-bg-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_teal_700 : Css.Style
bg_teal_700 =
    Css.batch
        [ Css.property "--tw-bg-opacity" "1"
        , Css.property "background-color" "rgba(44, 122, 123, var(--tw-bg-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.bg-teal-800 {
  --tw-bg-opacity: 1;
  background-color: rgba(40, 94, 97, var(--tw-bg-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_teal_800 : Css.Style
bg_teal_800 =
    Css.batch
        [ Css.property "--tw-bg-opacity" "1"
        , Css.property "background-color" "rgba(40, 94, 97, var(--tw-bg-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.bg-teal-900 {
  --tw-bg-opacity: 1;
  background-color: rgba(35, 78, 82, var(--tw-bg-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_teal_900 : Css.Style
bg_teal_900 =
    Css.batch
        [ Css.property "--tw-bg-opacity" "1"
        , Css.property "background-color" "rgba(35, 78, 82, var(--tw-bg-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.bg-top {
  background-position: top
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_top : Css.Style
bg_top =
    Css.property "background-position" "top"


{-| This class has the effect of following css declaration:

```css
.bg-transparent {
  background-color: transparent
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_transparent : Css.Style
bg_transparent =
    Css.property "background-color" "transparent"


{-| This class has the effect of following css declaration:

```css
.bg-white {
  --tw-bg-opacity: 1;
  background-color: rgba(255, 255, 255, var(--tw-bg-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_white : Css.Style
bg_white =
    Css.batch
        [ Css.property "--tw-bg-opacity" "1"
        , Css.property "background-color" "rgba(255, 255, 255, var(--tw-bg-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.bg-yellow-100 {
  --tw-bg-opacity: 1;
  background-color: rgba(255, 255, 240, var(--tw-bg-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_yellow_100 : Css.Style
bg_yellow_100 =
    Css.batch
        [ Css.property "--tw-bg-opacity" "1"
        , Css.property "background-color" "rgba(255, 255, 240, var(--tw-bg-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.bg-yellow-200 {
  --tw-bg-opacity: 1;
  background-color: rgba(254, 252, 191, var(--tw-bg-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_yellow_200 : Css.Style
bg_yellow_200 =
    Css.batch
        [ Css.property "--tw-bg-opacity" "1"
        , Css.property "background-color" "rgba(254, 252, 191, var(--tw-bg-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.bg-yellow-300 {
  --tw-bg-opacity: 1;
  background-color: rgba(250, 240, 137, var(--tw-bg-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_yellow_300 : Css.Style
bg_yellow_300 =
    Css.batch
        [ Css.property "--tw-bg-opacity" "1"
        , Css.property "background-color" "rgba(250, 240, 137, var(--tw-bg-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.bg-yellow-400 {
  --tw-bg-opacity: 1;
  background-color: rgba(246, 224, 94, var(--tw-bg-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_yellow_400 : Css.Style
bg_yellow_400 =
    Css.batch
        [ Css.property "--tw-bg-opacity" "1"
        , Css.property "background-color" "rgba(246, 224, 94, var(--tw-bg-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.bg-yellow-500 {
  --tw-bg-opacity: 1;
  background-color: rgba(236, 201, 75, var(--tw-bg-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_yellow_500 : Css.Style
bg_yellow_500 =
    Css.batch
        [ Css.property "--tw-bg-opacity" "1"
        , Css.property "background-color" "rgba(236, 201, 75, var(--tw-bg-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.bg-yellow-600 {
  --tw-bg-opacity: 1;
  background-color: rgba(214, 158, 46, var(--tw-bg-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_yellow_600 : Css.Style
bg_yellow_600 =
    Css.batch
        [ Css.property "--tw-bg-opacity" "1"
        , Css.property "background-color" "rgba(214, 158, 46, var(--tw-bg-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.bg-yellow-700 {
  --tw-bg-opacity: 1;
  background-color: rgba(183, 121, 31, var(--tw-bg-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_yellow_700 : Css.Style
bg_yellow_700 =
    Css.batch
        [ Css.property "--tw-bg-opacity" "1"
        , Css.property "background-color" "rgba(183, 121, 31, var(--tw-bg-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.bg-yellow-800 {
  --tw-bg-opacity: 1;
  background-color: rgba(151, 90, 22, var(--tw-bg-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_yellow_800 : Css.Style
bg_yellow_800 =
    Css.batch
        [ Css.property "--tw-bg-opacity" "1"
        , Css.property "background-color" "rgba(151, 90, 22, var(--tw-bg-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.bg-yellow-900 {
  --tw-bg-opacity: 1;
  background-color: rgba(116, 66, 16, var(--tw-bg-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_yellow_900 : Css.Style
bg_yellow_900 =
    Css.batch
        [ Css.property "--tw-bg-opacity" "1"
        , Css.property "background-color" "rgba(116, 66, 16, var(--tw-bg-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.block {
  display: block
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
block : Css.Style
block =
    Css.property "display" "block"


{-| This class has the effect of following css declaration:

```css
.blur {
  --tw-blur: blur(8px)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
blur : Css.Style
blur =
    Css.property "--tw-blur" "blur(8px)"


{-| This class has the effect of following css declaration:

```css
.blur-0 {
  --tw-blur: blur(0)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
blur_0 : Css.Style
blur_0 =
    Css.property "--tw-blur" "blur(0)"


{-| This class has the effect of following css declaration:

```css
.blur-2xl {
  --tw-blur: blur(40px)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
blur_2xl : Css.Style
blur_2xl =
    Css.property "--tw-blur" "blur(40px)"


{-| This class has the effect of following css declaration:

```css
.blur-3xl {
  --tw-blur: blur(64px)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
blur_3xl : Css.Style
blur_3xl =
    Css.property "--tw-blur" "blur(64px)"


{-| This class has the effect of following css declaration:

```css
.blur-lg {
  --tw-blur: blur(16px)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
blur_lg : Css.Style
blur_lg =
    Css.property "--tw-blur" "blur(16px)"


{-| This class has the effect of following css declaration:

```css
.blur-md {
  --tw-blur: blur(12px)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
blur_md : Css.Style
blur_md =
    Css.property "--tw-blur" "blur(12px)"


{-| This class has the effect of following css declaration:

```css
.blur-sm {
  --tw-blur: blur(4px)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
blur_sm : Css.Style
blur_sm =
    Css.property "--tw-blur" "blur(4px)"


{-| This class has the effect of following css declaration:

```css
.blur-xl {
  --tw-blur: blur(24px)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
blur_xl : Css.Style
blur_xl =
    Css.property "--tw-blur" "blur(24px)"


{-| This class has the effect of following css declaration:

```css
.border {
  border-width: 1px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border : Css.Style
border =
    Css.property "border-width" "1px"


{-| This class has the effect of following css declaration:

```css
.border-0 {
  border-width: 0px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_0 : Css.Style
border_0 =
    Css.property "border-width" "0px"


{-| This class has the effect of following css declaration:

```css
.border-2 {
  border-width: 2px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_2 : Css.Style
border_2 =
    Css.property "border-width" "2px"


{-| This class has the effect of following css declaration:

```css
.border-4 {
  border-width: 4px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_4 : Css.Style
border_4 =
    Css.property "border-width" "4px"


{-| This class has the effect of following css declaration:

```css
.border-8 {
  border-width: 8px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_8 : Css.Style
border_8 =
    Css.property "border-width" "8px"


{-| This class has the effect of following css declaration:

```css
.border-b {
  border-bottom-width: 1px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_b : Css.Style
border_b =
    Css.property "border-bottom-width" "1px"


{-| This class has the effect of following css declaration:

```css
.border-b-0 {
  border-bottom-width: 0px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_b_0 : Css.Style
border_b_0 =
    Css.property "border-bottom-width" "0px"


{-| This class has the effect of following css declaration:

```css
.border-b-2 {
  border-bottom-width: 2px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_b_2 : Css.Style
border_b_2 =
    Css.property "border-bottom-width" "2px"


{-| This class has the effect of following css declaration:

```css
.border-b-4 {
  border-bottom-width: 4px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_b_4 : Css.Style
border_b_4 =
    Css.property "border-bottom-width" "4px"


{-| This class has the effect of following css declaration:

```css
.border-b-8 {
  border-bottom-width: 8px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_b_8 : Css.Style
border_b_8 =
    Css.property "border-bottom-width" "8px"


{-| This class has the effect of following css declaration:

```css
.border-black {
  --tw-border-opacity: 1;
  border-color: rgba(0, 0, 0, var(--tw-border-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_black : Css.Style
border_black =
    Css.batch
        [ Css.property "--tw-border-opacity" "1"
        , Css.property "border-color" "rgba(0, 0, 0, var(--tw-border-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.border-blue-100 {
  --tw-border-opacity: 1;
  border-color: rgba(235, 248, 255, var(--tw-border-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_blue_100 : Css.Style
border_blue_100 =
    Css.batch
        [ Css.property "--tw-border-opacity" "1"
        , Css.property "border-color" "rgba(235, 248, 255, var(--tw-border-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.border-blue-200 {
  --tw-border-opacity: 1;
  border-color: rgba(190, 227, 248, var(--tw-border-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_blue_200 : Css.Style
border_blue_200 =
    Css.batch
        [ Css.property "--tw-border-opacity" "1"
        , Css.property "border-color" "rgba(190, 227, 248, var(--tw-border-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.border-blue-300 {
  --tw-border-opacity: 1;
  border-color: rgba(144, 205, 244, var(--tw-border-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_blue_300 : Css.Style
border_blue_300 =
    Css.batch
        [ Css.property "--tw-border-opacity" "1"
        , Css.property "border-color" "rgba(144, 205, 244, var(--tw-border-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.border-blue-400 {
  --tw-border-opacity: 1;
  border-color: rgba(99, 179, 237, var(--tw-border-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_blue_400 : Css.Style
border_blue_400 =
    Css.batch
        [ Css.property "--tw-border-opacity" "1"
        , Css.property "border-color" "rgba(99, 179, 237, var(--tw-border-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.border-blue-500 {
  --tw-border-opacity: 1;
  border-color: rgba(66, 153, 225, var(--tw-border-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_blue_500 : Css.Style
border_blue_500 =
    Css.batch
        [ Css.property "--tw-border-opacity" "1"
        , Css.property "border-color" "rgba(66, 153, 225, var(--tw-border-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.border-blue-600 {
  --tw-border-opacity: 1;
  border-color: rgba(49, 130, 206, var(--tw-border-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_blue_600 : Css.Style
border_blue_600 =
    Css.batch
        [ Css.property "--tw-border-opacity" "1"
        , Css.property "border-color" "rgba(49, 130, 206, var(--tw-border-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.border-blue-700 {
  --tw-border-opacity: 1;
  border-color: rgba(43, 108, 176, var(--tw-border-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_blue_700 : Css.Style
border_blue_700 =
    Css.batch
        [ Css.property "--tw-border-opacity" "1"
        , Css.property "border-color" "rgba(43, 108, 176, var(--tw-border-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.border-blue-800 {
  --tw-border-opacity: 1;
  border-color: rgba(44, 82, 130, var(--tw-border-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_blue_800 : Css.Style
border_blue_800 =
    Css.batch
        [ Css.property "--tw-border-opacity" "1"
        , Css.property "border-color" "rgba(44, 82, 130, var(--tw-border-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.border-blue-900 {
  --tw-border-opacity: 1;
  border-color: rgba(42, 67, 101, var(--tw-border-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_blue_900 : Css.Style
border_blue_900 =
    Css.batch
        [ Css.property "--tw-border-opacity" "1"
        , Css.property "border-color" "rgba(42, 67, 101, var(--tw-border-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.border-collapse {
  border-collapse: collapse
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_collapse : Css.Style
border_collapse =
    Css.property "border-collapse" "collapse"


{-| This class has the effect of following css declaration:

```css
.border-current {
  border-color: currentColor
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_current : Css.Style
border_current =
    Css.property "border-color" "currentColor"


{-| This class has the effect of following css declaration:

```css
.border-dashed {
  border-style: dashed
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_dashed : Css.Style
border_dashed =
    Css.property "border-style" "dashed"


{-| This class has the effect of following css declaration:

```css
.border-dotted {
  border-style: dotted
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_dotted : Css.Style
border_dotted =
    Css.property "border-style" "dotted"


{-| This class has the effect of following css declaration:

```css
.border-double {
  border-style: double
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_double : Css.Style
border_double =
    Css.property "border-style" "double"


{-| This class has the effect of following css declaration:

```css
.border-gray-100 {
  --tw-border-opacity: 1;
  border-color: rgba(247, 250, 252, var(--tw-border-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_gray_100 : Css.Style
border_gray_100 =
    Css.batch
        [ Css.property "--tw-border-opacity" "1"
        , Css.property "border-color" "rgba(247, 250, 252, var(--tw-border-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.border-gray-200 {
  --tw-border-opacity: 1;
  border-color: rgba(237, 242, 247, var(--tw-border-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_gray_200 : Css.Style
border_gray_200 =
    Css.batch
        [ Css.property "--tw-border-opacity" "1"
        , Css.property "border-color" "rgba(237, 242, 247, var(--tw-border-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.border-gray-300 {
  --tw-border-opacity: 1;
  border-color: rgba(226, 232, 240, var(--tw-border-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_gray_300 : Css.Style
border_gray_300 =
    Css.batch
        [ Css.property "--tw-border-opacity" "1"
        , Css.property "border-color" "rgba(226, 232, 240, var(--tw-border-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.border-gray-400 {
  --tw-border-opacity: 1;
  border-color: rgba(203, 213, 224, var(--tw-border-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_gray_400 : Css.Style
border_gray_400 =
    Css.batch
        [ Css.property "--tw-border-opacity" "1"
        , Css.property "border-color" "rgba(203, 213, 224, var(--tw-border-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.border-gray-500 {
  --tw-border-opacity: 1;
  border-color: rgba(160, 174, 192, var(--tw-border-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_gray_500 : Css.Style
border_gray_500 =
    Css.batch
        [ Css.property "--tw-border-opacity" "1"
        , Css.property "border-color" "rgba(160, 174, 192, var(--tw-border-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.border-gray-600 {
  --tw-border-opacity: 1;
  border-color: rgba(113, 128, 150, var(--tw-border-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_gray_600 : Css.Style
border_gray_600 =
    Css.batch
        [ Css.property "--tw-border-opacity" "1"
        , Css.property "border-color" "rgba(113, 128, 150, var(--tw-border-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.border-gray-700 {
  --tw-border-opacity: 1;
  border-color: rgba(74, 85, 104, var(--tw-border-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_gray_700 : Css.Style
border_gray_700 =
    Css.batch
        [ Css.property "--tw-border-opacity" "1"
        , Css.property "border-color" "rgba(74, 85, 104, var(--tw-border-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.border-gray-800 {
  --tw-border-opacity: 1;
  border-color: rgba(45, 55, 72, var(--tw-border-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_gray_800 : Css.Style
border_gray_800 =
    Css.batch
        [ Css.property "--tw-border-opacity" "1"
        , Css.property "border-color" "rgba(45, 55, 72, var(--tw-border-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.border-gray-900 {
  --tw-border-opacity: 1;
  border-color: rgba(26, 32, 44, var(--tw-border-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_gray_900 : Css.Style
border_gray_900 =
    Css.batch
        [ Css.property "--tw-border-opacity" "1"
        , Css.property "border-color" "rgba(26, 32, 44, var(--tw-border-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.border-green-100 {
  --tw-border-opacity: 1;
  border-color: rgba(240, 255, 244, var(--tw-border-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_green_100 : Css.Style
border_green_100 =
    Css.batch
        [ Css.property "--tw-border-opacity" "1"
        , Css.property "border-color" "rgba(240, 255, 244, var(--tw-border-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.border-green-200 {
  --tw-border-opacity: 1;
  border-color: rgba(198, 246, 213, var(--tw-border-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_green_200 : Css.Style
border_green_200 =
    Css.batch
        [ Css.property "--tw-border-opacity" "1"
        , Css.property "border-color" "rgba(198, 246, 213, var(--tw-border-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.border-green-300 {
  --tw-border-opacity: 1;
  border-color: rgba(154, 230, 180, var(--tw-border-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_green_300 : Css.Style
border_green_300 =
    Css.batch
        [ Css.property "--tw-border-opacity" "1"
        , Css.property "border-color" "rgba(154, 230, 180, var(--tw-border-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.border-green-400 {
  --tw-border-opacity: 1;
  border-color: rgba(104, 211, 145, var(--tw-border-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_green_400 : Css.Style
border_green_400 =
    Css.batch
        [ Css.property "--tw-border-opacity" "1"
        , Css.property "border-color" "rgba(104, 211, 145, var(--tw-border-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.border-green-500 {
  --tw-border-opacity: 1;
  border-color: rgba(72, 187, 120, var(--tw-border-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_green_500 : Css.Style
border_green_500 =
    Css.batch
        [ Css.property "--tw-border-opacity" "1"
        , Css.property "border-color" "rgba(72, 187, 120, var(--tw-border-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.border-green-600 {
  --tw-border-opacity: 1;
  border-color: rgba(56, 161, 105, var(--tw-border-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_green_600 : Css.Style
border_green_600 =
    Css.batch
        [ Css.property "--tw-border-opacity" "1"
        , Css.property "border-color" "rgba(56, 161, 105, var(--tw-border-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.border-green-700 {
  --tw-border-opacity: 1;
  border-color: rgba(47, 133, 90, var(--tw-border-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_green_700 : Css.Style
border_green_700 =
    Css.batch
        [ Css.property "--tw-border-opacity" "1"
        , Css.property "border-color" "rgba(47, 133, 90, var(--tw-border-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.border-green-800 {
  --tw-border-opacity: 1;
  border-color: rgba(39, 103, 73, var(--tw-border-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_green_800 : Css.Style
border_green_800 =
    Css.batch
        [ Css.property "--tw-border-opacity" "1"
        , Css.property "border-color" "rgba(39, 103, 73, var(--tw-border-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.border-green-900 {
  --tw-border-opacity: 1;
  border-color: rgba(34, 84, 61, var(--tw-border-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_green_900 : Css.Style
border_green_900 =
    Css.batch
        [ Css.property "--tw-border-opacity" "1"
        , Css.property "border-color" "rgba(34, 84, 61, var(--tw-border-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.border-indigo-100 {
  --tw-border-opacity: 1;
  border-color: rgba(235, 244, 255, var(--tw-border-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_indigo_100 : Css.Style
border_indigo_100 =
    Css.batch
        [ Css.property "--tw-border-opacity" "1"
        , Css.property "border-color" "rgba(235, 244, 255, var(--tw-border-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.border-indigo-200 {
  --tw-border-opacity: 1;
  border-color: rgba(195, 218, 254, var(--tw-border-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_indigo_200 : Css.Style
border_indigo_200 =
    Css.batch
        [ Css.property "--tw-border-opacity" "1"
        , Css.property "border-color" "rgba(195, 218, 254, var(--tw-border-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.border-indigo-300 {
  --tw-border-opacity: 1;
  border-color: rgba(163, 191, 250, var(--tw-border-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_indigo_300 : Css.Style
border_indigo_300 =
    Css.batch
        [ Css.property "--tw-border-opacity" "1"
        , Css.property "border-color" "rgba(163, 191, 250, var(--tw-border-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.border-indigo-400 {
  --tw-border-opacity: 1;
  border-color: rgba(127, 156, 245, var(--tw-border-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_indigo_400 : Css.Style
border_indigo_400 =
    Css.batch
        [ Css.property "--tw-border-opacity" "1"
        , Css.property "border-color" "rgba(127, 156, 245, var(--tw-border-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.border-indigo-500 {
  --tw-border-opacity: 1;
  border-color: rgba(102, 126, 234, var(--tw-border-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_indigo_500 : Css.Style
border_indigo_500 =
    Css.batch
        [ Css.property "--tw-border-opacity" "1"
        , Css.property "border-color" "rgba(102, 126, 234, var(--tw-border-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.border-indigo-600 {
  --tw-border-opacity: 1;
  border-color: rgba(90, 103, 216, var(--tw-border-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_indigo_600 : Css.Style
border_indigo_600 =
    Css.batch
        [ Css.property "--tw-border-opacity" "1"
        , Css.property "border-color" "rgba(90, 103, 216, var(--tw-border-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.border-indigo-700 {
  --tw-border-opacity: 1;
  border-color: rgba(76, 81, 191, var(--tw-border-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_indigo_700 : Css.Style
border_indigo_700 =
    Css.batch
        [ Css.property "--tw-border-opacity" "1"
        , Css.property "border-color" "rgba(76, 81, 191, var(--tw-border-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.border-indigo-800 {
  --tw-border-opacity: 1;
  border-color: rgba(67, 65, 144, var(--tw-border-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_indigo_800 : Css.Style
border_indigo_800 =
    Css.batch
        [ Css.property "--tw-border-opacity" "1"
        , Css.property "border-color" "rgba(67, 65, 144, var(--tw-border-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.border-indigo-900 {
  --tw-border-opacity: 1;
  border-color: rgba(60, 54, 107, var(--tw-border-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_indigo_900 : Css.Style
border_indigo_900 =
    Css.batch
        [ Css.property "--tw-border-opacity" "1"
        , Css.property "border-color" "rgba(60, 54, 107, var(--tw-border-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.border-l {
  border-left-width: 1px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_l : Css.Style
border_l =
    Css.property "border-left-width" "1px"


{-| This class has the effect of following css declaration:

```css
.border-l-0 {
  border-left-width: 0px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_l_0 : Css.Style
border_l_0 =
    Css.property "border-left-width" "0px"


{-| This class has the effect of following css declaration:

```css
.border-l-2 {
  border-left-width: 2px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_l_2 : Css.Style
border_l_2 =
    Css.property "border-left-width" "2px"


{-| This class has the effect of following css declaration:

```css
.border-l-4 {
  border-left-width: 4px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_l_4 : Css.Style
border_l_4 =
    Css.property "border-left-width" "4px"


{-| This class has the effect of following css declaration:

```css
.border-l-8 {
  border-left-width: 8px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_l_8 : Css.Style
border_l_8 =
    Css.property "border-left-width" "8px"


{-| This class has the effect of following css declaration:

```css
.border-none {
  border-style: none
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_none : Css.Style
border_none =
    Css.property "border-style" "none"


{-| This class has the effect of following css declaration:

```css
.border-opacity-0 {
  --tw-border-opacity: 0
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_opacity_0 : Css.Style
border_opacity_0 =
    Css.property "--tw-border-opacity" "0"


{-| This class has the effect of following css declaration:

```css
.border-opacity-10 {
  --tw-border-opacity: 0.1
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_opacity_10 : Css.Style
border_opacity_10 =
    Css.property "--tw-border-opacity" "0.1"


{-| This class has the effect of following css declaration:

```css
.border-opacity-100 {
  --tw-border-opacity: 1
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_opacity_100 : Css.Style
border_opacity_100 =
    Css.property "--tw-border-opacity" "1"


{-| This class has the effect of following css declaration:

```css
.border-opacity-20 {
  --tw-border-opacity: 0.2
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_opacity_20 : Css.Style
border_opacity_20 =
    Css.property "--tw-border-opacity" "0.2"


{-| This class has the effect of following css declaration:

```css
.border-opacity-25 {
  --tw-border-opacity: 0.25
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_opacity_25 : Css.Style
border_opacity_25 =
    Css.property "--tw-border-opacity" "0.25"


{-| This class has the effect of following css declaration:

```css
.border-opacity-30 {
  --tw-border-opacity: 0.3
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_opacity_30 : Css.Style
border_opacity_30 =
    Css.property "--tw-border-opacity" "0.3"


{-| This class has the effect of following css declaration:

```css
.border-opacity-40 {
  --tw-border-opacity: 0.4
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_opacity_40 : Css.Style
border_opacity_40 =
    Css.property "--tw-border-opacity" "0.4"


{-| This class has the effect of following css declaration:

```css
.border-opacity-5 {
  --tw-border-opacity: 0.05
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_opacity_5 : Css.Style
border_opacity_5 =
    Css.property "--tw-border-opacity" "0.05"


{-| This class has the effect of following css declaration:

```css
.border-opacity-50 {
  --tw-border-opacity: 0.5
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_opacity_50 : Css.Style
border_opacity_50 =
    Css.property "--tw-border-opacity" "0.5"


{-| This class has the effect of following css declaration:

```css
.border-opacity-60 {
  --tw-border-opacity: 0.6
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_opacity_60 : Css.Style
border_opacity_60 =
    Css.property "--tw-border-opacity" "0.6"


{-| This class has the effect of following css declaration:

```css
.border-opacity-70 {
  --tw-border-opacity: 0.7
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_opacity_70 : Css.Style
border_opacity_70 =
    Css.property "--tw-border-opacity" "0.7"


{-| This class has the effect of following css declaration:

```css
.border-opacity-75 {
  --tw-border-opacity: 0.75
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_opacity_75 : Css.Style
border_opacity_75 =
    Css.property "--tw-border-opacity" "0.75"


{-| This class has the effect of following css declaration:

```css
.border-opacity-80 {
  --tw-border-opacity: 0.8
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_opacity_80 : Css.Style
border_opacity_80 =
    Css.property "--tw-border-opacity" "0.8"


{-| This class has the effect of following css declaration:

```css
.border-opacity-90 {
  --tw-border-opacity: 0.9
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_opacity_90 : Css.Style
border_opacity_90 =
    Css.property "--tw-border-opacity" "0.9"


{-| This class has the effect of following css declaration:

```css
.border-opacity-95 {
  --tw-border-opacity: 0.95
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_opacity_95 : Css.Style
border_opacity_95 =
    Css.property "--tw-border-opacity" "0.95"


{-| This class has the effect of following css declaration:

```css
.border-orange-100 {
  --tw-border-opacity: 1;
  border-color: rgba(255, 250, 240, var(--tw-border-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_orange_100 : Css.Style
border_orange_100 =
    Css.batch
        [ Css.property "--tw-border-opacity" "1"
        , Css.property "border-color" "rgba(255, 250, 240, var(--tw-border-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.border-orange-200 {
  --tw-border-opacity: 1;
  border-color: rgba(254, 235, 200, var(--tw-border-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_orange_200 : Css.Style
border_orange_200 =
    Css.batch
        [ Css.property "--tw-border-opacity" "1"
        , Css.property "border-color" "rgba(254, 235, 200, var(--tw-border-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.border-orange-300 {
  --tw-border-opacity: 1;
  border-color: rgba(251, 211, 141, var(--tw-border-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_orange_300 : Css.Style
border_orange_300 =
    Css.batch
        [ Css.property "--tw-border-opacity" "1"
        , Css.property "border-color" "rgba(251, 211, 141, var(--tw-border-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.border-orange-400 {
  --tw-border-opacity: 1;
  border-color: rgba(246, 173, 85, var(--tw-border-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_orange_400 : Css.Style
border_orange_400 =
    Css.batch
        [ Css.property "--tw-border-opacity" "1"
        , Css.property "border-color" "rgba(246, 173, 85, var(--tw-border-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.border-orange-500 {
  --tw-border-opacity: 1;
  border-color: rgba(237, 137, 54, var(--tw-border-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_orange_500 : Css.Style
border_orange_500 =
    Css.batch
        [ Css.property "--tw-border-opacity" "1"
        , Css.property "border-color" "rgba(237, 137, 54, var(--tw-border-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.border-orange-600 {
  --tw-border-opacity: 1;
  border-color: rgba(221, 107, 32, var(--tw-border-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_orange_600 : Css.Style
border_orange_600 =
    Css.batch
        [ Css.property "--tw-border-opacity" "1"
        , Css.property "border-color" "rgba(221, 107, 32, var(--tw-border-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.border-orange-700 {
  --tw-border-opacity: 1;
  border-color: rgba(192, 86, 33, var(--tw-border-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_orange_700 : Css.Style
border_orange_700 =
    Css.batch
        [ Css.property "--tw-border-opacity" "1"
        , Css.property "border-color" "rgba(192, 86, 33, var(--tw-border-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.border-orange-800 {
  --tw-border-opacity: 1;
  border-color: rgba(156, 66, 33, var(--tw-border-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_orange_800 : Css.Style
border_orange_800 =
    Css.batch
        [ Css.property "--tw-border-opacity" "1"
        , Css.property "border-color" "rgba(156, 66, 33, var(--tw-border-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.border-orange-900 {
  --tw-border-opacity: 1;
  border-color: rgba(123, 52, 30, var(--tw-border-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_orange_900 : Css.Style
border_orange_900 =
    Css.batch
        [ Css.property "--tw-border-opacity" "1"
        , Css.property "border-color" "rgba(123, 52, 30, var(--tw-border-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.border-pink-100 {
  --tw-border-opacity: 1;
  border-color: rgba(255, 245, 247, var(--tw-border-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_pink_100 : Css.Style
border_pink_100 =
    Css.batch
        [ Css.property "--tw-border-opacity" "1"
        , Css.property "border-color" "rgba(255, 245, 247, var(--tw-border-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.border-pink-200 {
  --tw-border-opacity: 1;
  border-color: rgba(254, 215, 226, var(--tw-border-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_pink_200 : Css.Style
border_pink_200 =
    Css.batch
        [ Css.property "--tw-border-opacity" "1"
        , Css.property "border-color" "rgba(254, 215, 226, var(--tw-border-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.border-pink-300 {
  --tw-border-opacity: 1;
  border-color: rgba(251, 182, 206, var(--tw-border-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_pink_300 : Css.Style
border_pink_300 =
    Css.batch
        [ Css.property "--tw-border-opacity" "1"
        , Css.property "border-color" "rgba(251, 182, 206, var(--tw-border-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.border-pink-400 {
  --tw-border-opacity: 1;
  border-color: rgba(246, 135, 179, var(--tw-border-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_pink_400 : Css.Style
border_pink_400 =
    Css.batch
        [ Css.property "--tw-border-opacity" "1"
        , Css.property "border-color" "rgba(246, 135, 179, var(--tw-border-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.border-pink-500 {
  --tw-border-opacity: 1;
  border-color: rgba(237, 100, 166, var(--tw-border-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_pink_500 : Css.Style
border_pink_500 =
    Css.batch
        [ Css.property "--tw-border-opacity" "1"
        , Css.property "border-color" "rgba(237, 100, 166, var(--tw-border-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.border-pink-600 {
  --tw-border-opacity: 1;
  border-color: rgba(213, 63, 140, var(--tw-border-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_pink_600 : Css.Style
border_pink_600 =
    Css.batch
        [ Css.property "--tw-border-opacity" "1"
        , Css.property "border-color" "rgba(213, 63, 140, var(--tw-border-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.border-pink-700 {
  --tw-border-opacity: 1;
  border-color: rgba(184, 50, 128, var(--tw-border-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_pink_700 : Css.Style
border_pink_700 =
    Css.batch
        [ Css.property "--tw-border-opacity" "1"
        , Css.property "border-color" "rgba(184, 50, 128, var(--tw-border-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.border-pink-800 {
  --tw-border-opacity: 1;
  border-color: rgba(151, 38, 109, var(--tw-border-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_pink_800 : Css.Style
border_pink_800 =
    Css.batch
        [ Css.property "--tw-border-opacity" "1"
        , Css.property "border-color" "rgba(151, 38, 109, var(--tw-border-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.border-pink-900 {
  --tw-border-opacity: 1;
  border-color: rgba(112, 36, 89, var(--tw-border-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_pink_900 : Css.Style
border_pink_900 =
    Css.batch
        [ Css.property "--tw-border-opacity" "1"
        , Css.property "border-color" "rgba(112, 36, 89, var(--tw-border-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.border-purple-100 {
  --tw-border-opacity: 1;
  border-color: rgba(250, 245, 255, var(--tw-border-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_purple_100 : Css.Style
border_purple_100 =
    Css.batch
        [ Css.property "--tw-border-opacity" "1"
        , Css.property "border-color" "rgba(250, 245, 255, var(--tw-border-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.border-purple-200 {
  --tw-border-opacity: 1;
  border-color: rgba(233, 216, 253, var(--tw-border-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_purple_200 : Css.Style
border_purple_200 =
    Css.batch
        [ Css.property "--tw-border-opacity" "1"
        , Css.property "border-color" "rgba(233, 216, 253, var(--tw-border-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.border-purple-300 {
  --tw-border-opacity: 1;
  border-color: rgba(214, 188, 250, var(--tw-border-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_purple_300 : Css.Style
border_purple_300 =
    Css.batch
        [ Css.property "--tw-border-opacity" "1"
        , Css.property "border-color" "rgba(214, 188, 250, var(--tw-border-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.border-purple-400 {
  --tw-border-opacity: 1;
  border-color: rgba(183, 148, 244, var(--tw-border-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_purple_400 : Css.Style
border_purple_400 =
    Css.batch
        [ Css.property "--tw-border-opacity" "1"
        , Css.property "border-color" "rgba(183, 148, 244, var(--tw-border-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.border-purple-500 {
  --tw-border-opacity: 1;
  border-color: rgba(159, 122, 234, var(--tw-border-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_purple_500 : Css.Style
border_purple_500 =
    Css.batch
        [ Css.property "--tw-border-opacity" "1"
        , Css.property "border-color" "rgba(159, 122, 234, var(--tw-border-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.border-purple-600 {
  --tw-border-opacity: 1;
  border-color: rgba(128, 90, 213, var(--tw-border-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_purple_600 : Css.Style
border_purple_600 =
    Css.batch
        [ Css.property "--tw-border-opacity" "1"
        , Css.property "border-color" "rgba(128, 90, 213, var(--tw-border-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.border-purple-700 {
  --tw-border-opacity: 1;
  border-color: rgba(107, 70, 193, var(--tw-border-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_purple_700 : Css.Style
border_purple_700 =
    Css.batch
        [ Css.property "--tw-border-opacity" "1"
        , Css.property "border-color" "rgba(107, 70, 193, var(--tw-border-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.border-purple-800 {
  --tw-border-opacity: 1;
  border-color: rgba(85, 60, 154, var(--tw-border-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_purple_800 : Css.Style
border_purple_800 =
    Css.batch
        [ Css.property "--tw-border-opacity" "1"
        , Css.property "border-color" "rgba(85, 60, 154, var(--tw-border-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.border-purple-900 {
  --tw-border-opacity: 1;
  border-color: rgba(68, 51, 122, var(--tw-border-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_purple_900 : Css.Style
border_purple_900 =
    Css.batch
        [ Css.property "--tw-border-opacity" "1"
        , Css.property "border-color" "rgba(68, 51, 122, var(--tw-border-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.border-r {
  border-right-width: 1px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_r : Css.Style
border_r =
    Css.property "border-right-width" "1px"


{-| This class has the effect of following css declaration:

```css
.border-r-0 {
  border-right-width: 0px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_r_0 : Css.Style
border_r_0 =
    Css.property "border-right-width" "0px"


{-| This class has the effect of following css declaration:

```css
.border-r-2 {
  border-right-width: 2px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_r_2 : Css.Style
border_r_2 =
    Css.property "border-right-width" "2px"


{-| This class has the effect of following css declaration:

```css
.border-r-4 {
  border-right-width: 4px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_r_4 : Css.Style
border_r_4 =
    Css.property "border-right-width" "4px"


{-| This class has the effect of following css declaration:

```css
.border-r-8 {
  border-right-width: 8px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_r_8 : Css.Style
border_r_8 =
    Css.property "border-right-width" "8px"


{-| This class has the effect of following css declaration:

```css
.border-red-100 {
  --tw-border-opacity: 1;
  border-color: rgba(255, 245, 245, var(--tw-border-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_red_100 : Css.Style
border_red_100 =
    Css.batch
        [ Css.property "--tw-border-opacity" "1"
        , Css.property "border-color" "rgba(255, 245, 245, var(--tw-border-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.border-red-200 {
  --tw-border-opacity: 1;
  border-color: rgba(254, 215, 215, var(--tw-border-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_red_200 : Css.Style
border_red_200 =
    Css.batch
        [ Css.property "--tw-border-opacity" "1"
        , Css.property "border-color" "rgba(254, 215, 215, var(--tw-border-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.border-red-300 {
  --tw-border-opacity: 1;
  border-color: rgba(254, 178, 178, var(--tw-border-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_red_300 : Css.Style
border_red_300 =
    Css.batch
        [ Css.property "--tw-border-opacity" "1"
        , Css.property "border-color" "rgba(254, 178, 178, var(--tw-border-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.border-red-400 {
  --tw-border-opacity: 1;
  border-color: rgba(252, 129, 129, var(--tw-border-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_red_400 : Css.Style
border_red_400 =
    Css.batch
        [ Css.property "--tw-border-opacity" "1"
        , Css.property "border-color" "rgba(252, 129, 129, var(--tw-border-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.border-red-500 {
  --tw-border-opacity: 1;
  border-color: rgba(245, 101, 101, var(--tw-border-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_red_500 : Css.Style
border_red_500 =
    Css.batch
        [ Css.property "--tw-border-opacity" "1"
        , Css.property "border-color" "rgba(245, 101, 101, var(--tw-border-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.border-red-600 {
  --tw-border-opacity: 1;
  border-color: rgba(229, 62, 62, var(--tw-border-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_red_600 : Css.Style
border_red_600 =
    Css.batch
        [ Css.property "--tw-border-opacity" "1"
        , Css.property "border-color" "rgba(229, 62, 62, var(--tw-border-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.border-red-700 {
  --tw-border-opacity: 1;
  border-color: rgba(197, 48, 48, var(--tw-border-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_red_700 : Css.Style
border_red_700 =
    Css.batch
        [ Css.property "--tw-border-opacity" "1"
        , Css.property "border-color" "rgba(197, 48, 48, var(--tw-border-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.border-red-800 {
  --tw-border-opacity: 1;
  border-color: rgba(155, 44, 44, var(--tw-border-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_red_800 : Css.Style
border_red_800 =
    Css.batch
        [ Css.property "--tw-border-opacity" "1"
        , Css.property "border-color" "rgba(155, 44, 44, var(--tw-border-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.border-red-900 {
  --tw-border-opacity: 1;
  border-color: rgba(116, 42, 42, var(--tw-border-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_red_900 : Css.Style
border_red_900 =
    Css.batch
        [ Css.property "--tw-border-opacity" "1"
        , Css.property "border-color" "rgba(116, 42, 42, var(--tw-border-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.border-separate {
  border-collapse: separate
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_separate : Css.Style
border_separate =
    Css.property "border-collapse" "separate"


{-| This class has the effect of following css declaration:

```css
.border-solid {
  border-style: solid
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_solid : Css.Style
border_solid =
    Css.property "border-style" "solid"


{-| This class has the effect of following css declaration:

```css
.border-t {
  border-top-width: 1px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_t : Css.Style
border_t =
    Css.property "border-top-width" "1px"


{-| This class has the effect of following css declaration:

```css
.border-t-0 {
  border-top-width: 0px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_t_0 : Css.Style
border_t_0 =
    Css.property "border-top-width" "0px"


{-| This class has the effect of following css declaration:

```css
.border-t-2 {
  border-top-width: 2px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_t_2 : Css.Style
border_t_2 =
    Css.property "border-top-width" "2px"


{-| This class has the effect of following css declaration:

```css
.border-t-4 {
  border-top-width: 4px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_t_4 : Css.Style
border_t_4 =
    Css.property "border-top-width" "4px"


{-| This class has the effect of following css declaration:

```css
.border-t-8 {
  border-top-width: 8px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_t_8 : Css.Style
border_t_8 =
    Css.property "border-top-width" "8px"


{-| This class has the effect of following css declaration:

```css
.border-teal-100 {
  --tw-border-opacity: 1;
  border-color: rgba(230, 255, 250, var(--tw-border-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_teal_100 : Css.Style
border_teal_100 =
    Css.batch
        [ Css.property "--tw-border-opacity" "1"
        , Css.property "border-color" "rgba(230, 255, 250, var(--tw-border-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.border-teal-200 {
  --tw-border-opacity: 1;
  border-color: rgba(178, 245, 234, var(--tw-border-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_teal_200 : Css.Style
border_teal_200 =
    Css.batch
        [ Css.property "--tw-border-opacity" "1"
        , Css.property "border-color" "rgba(178, 245, 234, var(--tw-border-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.border-teal-300 {
  --tw-border-opacity: 1;
  border-color: rgba(129, 230, 217, var(--tw-border-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_teal_300 : Css.Style
border_teal_300 =
    Css.batch
        [ Css.property "--tw-border-opacity" "1"
        , Css.property "border-color" "rgba(129, 230, 217, var(--tw-border-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.border-teal-400 {
  --tw-border-opacity: 1;
  border-color: rgba(79, 209, 197, var(--tw-border-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_teal_400 : Css.Style
border_teal_400 =
    Css.batch
        [ Css.property "--tw-border-opacity" "1"
        , Css.property "border-color" "rgba(79, 209, 197, var(--tw-border-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.border-teal-500 {
  --tw-border-opacity: 1;
  border-color: rgba(56, 178, 172, var(--tw-border-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_teal_500 : Css.Style
border_teal_500 =
    Css.batch
        [ Css.property "--tw-border-opacity" "1"
        , Css.property "border-color" "rgba(56, 178, 172, var(--tw-border-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.border-teal-600 {
  --tw-border-opacity: 1;
  border-color: rgba(49, 151, 149, var(--tw-border-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_teal_600 : Css.Style
border_teal_600 =
    Css.batch
        [ Css.property "--tw-border-opacity" "1"
        , Css.property "border-color" "rgba(49, 151, 149, var(--tw-border-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.border-teal-700 {
  --tw-border-opacity: 1;
  border-color: rgba(44, 122, 123, var(--tw-border-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_teal_700 : Css.Style
border_teal_700 =
    Css.batch
        [ Css.property "--tw-border-opacity" "1"
        , Css.property "border-color" "rgba(44, 122, 123, var(--tw-border-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.border-teal-800 {
  --tw-border-opacity: 1;
  border-color: rgba(40, 94, 97, var(--tw-border-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_teal_800 : Css.Style
border_teal_800 =
    Css.batch
        [ Css.property "--tw-border-opacity" "1"
        , Css.property "border-color" "rgba(40, 94, 97, var(--tw-border-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.border-teal-900 {
  --tw-border-opacity: 1;
  border-color: rgba(35, 78, 82, var(--tw-border-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_teal_900 : Css.Style
border_teal_900 =
    Css.batch
        [ Css.property "--tw-border-opacity" "1"
        , Css.property "border-color" "rgba(35, 78, 82, var(--tw-border-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.border-transparent {
  border-color: transparent
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_transparent : Css.Style
border_transparent =
    Css.property "border-color" "transparent"


{-| This class has the effect of following css declaration:

```css
.border-white {
  --tw-border-opacity: 1;
  border-color: rgba(255, 255, 255, var(--tw-border-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_white : Css.Style
border_white =
    Css.batch
        [ Css.property "--tw-border-opacity" "1"
        , Css.property "border-color" "rgba(255, 255, 255, var(--tw-border-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.border-yellow-100 {
  --tw-border-opacity: 1;
  border-color: rgba(255, 255, 240, var(--tw-border-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_yellow_100 : Css.Style
border_yellow_100 =
    Css.batch
        [ Css.property "--tw-border-opacity" "1"
        , Css.property "border-color" "rgba(255, 255, 240, var(--tw-border-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.border-yellow-200 {
  --tw-border-opacity: 1;
  border-color: rgba(254, 252, 191, var(--tw-border-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_yellow_200 : Css.Style
border_yellow_200 =
    Css.batch
        [ Css.property "--tw-border-opacity" "1"
        , Css.property "border-color" "rgba(254, 252, 191, var(--tw-border-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.border-yellow-300 {
  --tw-border-opacity: 1;
  border-color: rgba(250, 240, 137, var(--tw-border-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_yellow_300 : Css.Style
border_yellow_300 =
    Css.batch
        [ Css.property "--tw-border-opacity" "1"
        , Css.property "border-color" "rgba(250, 240, 137, var(--tw-border-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.border-yellow-400 {
  --tw-border-opacity: 1;
  border-color: rgba(246, 224, 94, var(--tw-border-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_yellow_400 : Css.Style
border_yellow_400 =
    Css.batch
        [ Css.property "--tw-border-opacity" "1"
        , Css.property "border-color" "rgba(246, 224, 94, var(--tw-border-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.border-yellow-500 {
  --tw-border-opacity: 1;
  border-color: rgba(236, 201, 75, var(--tw-border-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_yellow_500 : Css.Style
border_yellow_500 =
    Css.batch
        [ Css.property "--tw-border-opacity" "1"
        , Css.property "border-color" "rgba(236, 201, 75, var(--tw-border-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.border-yellow-600 {
  --tw-border-opacity: 1;
  border-color: rgba(214, 158, 46, var(--tw-border-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_yellow_600 : Css.Style
border_yellow_600 =
    Css.batch
        [ Css.property "--tw-border-opacity" "1"
        , Css.property "border-color" "rgba(214, 158, 46, var(--tw-border-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.border-yellow-700 {
  --tw-border-opacity: 1;
  border-color: rgba(183, 121, 31, var(--tw-border-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_yellow_700 : Css.Style
border_yellow_700 =
    Css.batch
        [ Css.property "--tw-border-opacity" "1"
        , Css.property "border-color" "rgba(183, 121, 31, var(--tw-border-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.border-yellow-800 {
  --tw-border-opacity: 1;
  border-color: rgba(151, 90, 22, var(--tw-border-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_yellow_800 : Css.Style
border_yellow_800 =
    Css.batch
        [ Css.property "--tw-border-opacity" "1"
        , Css.property "border-color" "rgba(151, 90, 22, var(--tw-border-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.border-yellow-900 {
  --tw-border-opacity: 1;
  border-color: rgba(116, 66, 16, var(--tw-border-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_yellow_900 : Css.Style
border_yellow_900 =
    Css.batch
        [ Css.property "--tw-border-opacity" "1"
        , Css.property "border-color" "rgba(116, 66, 16, var(--tw-border-opacity))"
        ]


{-| This class has the effect of following css declaration:

```css
.bottom-0 {
  bottom: 0px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bottom_0 : Css.Style
bottom_0 =
    Css.property "bottom" "0px"


{-| This class has the effect of following css declaration:

```css
.bottom-0\.5 {
  bottom: 0.125rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bottom_0_dot_5 : Css.Style
bottom_0_dot_5 =
    Css.property "bottom" "0.125rem"


{-| This class has the effect of following css declaration:

```css
.bottom-1 {
  bottom: 0.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bottom_1 : Css.Style
bottom_1 =
    Css.property "bottom" "0.25rem"


{-| This class has the effect of following css declaration:

```css
.bottom-10 {
  bottom: 2.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bottom_10 : Css.Style
bottom_10 =
    Css.property "bottom" "2.5rem"


{-| This class has the effect of following css declaration:

```css
.bottom-11 {
  bottom: 2.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bottom_11 : Css.Style
bottom_11 =
    Css.property "bottom" "2.75rem"


{-| This class has the effect of following css declaration:

```css
.bottom-12 {
  bottom: 3rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bottom_12 : Css.Style
bottom_12 =
    Css.property "bottom" "3rem"


{-| This class has the effect of following css declaration:

```css
.bottom-14 {
  bottom: 3.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bottom_14 : Css.Style
bottom_14 =
    Css.property "bottom" "3.5rem"


{-| This class has the effect of following css declaration:

```css
.bottom-16 {
  bottom: 4rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bottom_16 : Css.Style
bottom_16 =
    Css.property "bottom" "4rem"


{-| This class has the effect of following css declaration:

```css
.bottom-1\.5 {
  bottom: 0.375rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bottom_1_dot_5 : Css.Style
bottom_1_dot_5 =
    Css.property "bottom" "0.375rem"


{-| This class has the effect of following css declaration:

```css
.bottom-1\/2 {
  bottom: 50%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bottom_1over2 : Css.Style
bottom_1over2 =
    Css.property "bottom" "50%"


{-| This class has the effect of following css declaration:

```css
.bottom-1\/3 {
  bottom: 33.333333%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bottom_1over3 : Css.Style
bottom_1over3 =
    Css.property "bottom" "33.333333%"


{-| This class has the effect of following css declaration:

```css
.bottom-1\/4 {
  bottom: 25%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bottom_1over4 : Css.Style
bottom_1over4 =
    Css.property "bottom" "25%"


{-| This class has the effect of following css declaration:

```css
.bottom-2 {
  bottom: 0.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bottom_2 : Css.Style
bottom_2 =
    Css.property "bottom" "0.5rem"


{-| This class has the effect of following css declaration:

```css
.bottom-20 {
  bottom: 5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bottom_20 : Css.Style
bottom_20 =
    Css.property "bottom" "5rem"


{-| This class has the effect of following css declaration:

```css
.bottom-24 {
  bottom: 6rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bottom_24 : Css.Style
bottom_24 =
    Css.property "bottom" "6rem"


{-| This class has the effect of following css declaration:

```css
.bottom-28 {
  bottom: 7rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bottom_28 : Css.Style
bottom_28 =
    Css.property "bottom" "7rem"


{-| This class has the effect of following css declaration:

```css
.bottom-2\.5 {
  bottom: 0.625rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bottom_2_dot_5 : Css.Style
bottom_2_dot_5 =
    Css.property "bottom" "0.625rem"


{-| This class has the effect of following css declaration:

```css
.bottom-2\/3 {
  bottom: 66.666667%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bottom_2over3 : Css.Style
bottom_2over3 =
    Css.property "bottom" "66.666667%"


{-| This class has the effect of following css declaration:

```css
.bottom-2\/4 {
  bottom: 50%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bottom_2over4 : Css.Style
bottom_2over4 =
    Css.property "bottom" "50%"


{-| This class has the effect of following css declaration:

```css
.bottom-3 {
  bottom: 0.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bottom_3 : Css.Style
bottom_3 =
    Css.property "bottom" "0.75rem"


{-| This class has the effect of following css declaration:

```css
.bottom-32 {
  bottom: 8rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bottom_32 : Css.Style
bottom_32 =
    Css.property "bottom" "8rem"


{-| This class has the effect of following css declaration:

```css
.bottom-36 {
  bottom: 9rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bottom_36 : Css.Style
bottom_36 =
    Css.property "bottom" "9rem"


{-| This class has the effect of following css declaration:

```css
.bottom-3\.5 {
  bottom: 0.875rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bottom_3_dot_5 : Css.Style
bottom_3_dot_5 =
    Css.property "bottom" "0.875rem"


{-| This class has the effect of following css declaration:

```css
.bottom-3\/4 {
  bottom: 75%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bottom_3over4 : Css.Style
bottom_3over4 =
    Css.property "bottom" "75%"


{-| This class has the effect of following css declaration:

```css
.bottom-4 {
  bottom: 1rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bottom_4 : Css.Style
bottom_4 =
    Css.property "bottom" "1rem"


{-| This class has the effect of following css declaration:

```css
.bottom-40 {
  bottom: 10rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bottom_40 : Css.Style
bottom_40 =
    Css.property "bottom" "10rem"


{-| This class has the effect of following css declaration:

```css
.bottom-44 {
  bottom: 11rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bottom_44 : Css.Style
bottom_44 =
    Css.property "bottom" "11rem"


{-| This class has the effect of following css declaration:

```css
.bottom-48 {
  bottom: 12rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bottom_48 : Css.Style
bottom_48 =
    Css.property "bottom" "12rem"


{-| This class has the effect of following css declaration:

```css
.bottom-5 {
  bottom: 1.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bottom_5 : Css.Style
bottom_5 =
    Css.property "bottom" "1.25rem"


{-| This class has the effect of following css declaration:

```css
.bottom-52 {
  bottom: 13rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bottom_52 : Css.Style
bottom_52 =
    Css.property "bottom" "13rem"


{-| This class has the effect of following css declaration:

```css
.bottom-56 {
  bottom: 14rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bottom_56 : Css.Style
bottom_56 =
    Css.property "bottom" "14rem"


{-| This class has the effect of following css declaration:

```css
.bottom-6 {
  bottom: 1.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bottom_6 : Css.Style
bottom_6 =
    Css.property "bottom" "1.5rem"


{-| This class has the effect of following css declaration:

```css
.bottom-60 {
  bottom: 15rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bottom_60 : Css.Style
bottom_60 =
    Css.property "bottom" "15rem"


{-| This class has the effect of following css declaration:

```css
.bottom-64 {
  bottom: 16rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bottom_64 : Css.Style
bottom_64 =
    Css.property "bottom" "16rem"


{-| This class has the effect of following css declaration:

```css
.bottom-7 {
  bottom: 1.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bottom_7 : Css.Style
bottom_7 =
    Css.property "bottom" "1.75rem"


{-| This class has the effect of following css declaration:

```css
.bottom-72 {
  bottom: 18rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bottom_72 : Css.Style
bottom_72 =
    Css.property "bottom" "18rem"


{-| This class has the effect of following css declaration:

```css
.bottom-8 {
  bottom: 2rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bottom_8 : Css.Style
bottom_8 =
    Css.property "bottom" "2rem"


{-| This class has the effect of following css declaration:

```css
.bottom-80 {
  bottom: 20rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bottom_80 : Css.Style
bottom_80 =
    Css.property "bottom" "20rem"


{-| This class has the effect of following css declaration:

```css
.bottom-9 {
  bottom: 2.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bottom_9 : Css.Style
bottom_9 =
    Css.property "bottom" "2.25rem"


{-| This class has the effect of following css declaration:

```css
.bottom-96 {
  bottom: 24rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bottom_96 : Css.Style
bottom_96 =
    Css.property "bottom" "24rem"


{-| This class has the effect of following css declaration:

```css
.bottom-auto {
  bottom: auto
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bottom_auto : Css.Style
bottom_auto =
    Css.property "bottom" "auto"


{-| This class has the effect of following css declaration:

```css
.bottom-full {
  bottom: 100%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bottom_full : Css.Style
bottom_full =
    Css.property "bottom" "100%"


{-| This class has the effect of following css declaration:

```css
.bottom-px {
  bottom: 1px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bottom_px : Css.Style
bottom_px =
    Css.property "bottom" "1px"


{-| This class has the effect of following css declaration:

```css
.box-border {
  box-sizing: border-box
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
box_border : Css.Style
box_border =
    Css.property "box-sizing" "border-box"


{-| This class has the effect of following css declaration:

```css
.box-content {
  box-sizing: content-box
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
box_content : Css.Style
box_content =
    Css.property "box-sizing" "content-box"


{-| This class has the effect of following css declaration:

```css
.break-all {
  word-break: break-all
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
break_all : Css.Style
break_all =
    Css.property "word-break" "break-all"


{-| This class has the effect of following css declaration:

```css
.break-normal {
  overflow-wrap: normal;
  word-break: normal
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
break_normal : Css.Style
break_normal =
    Css.batch
        [ Css.property "overflow-wrap" "normal"
        , Css.property "word-break" "normal"
        ]


{-| This class has the effect of following css declaration:

```css
.break-words {
  overflow-wrap: break-word
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
break_words : Css.Style
break_words =
    Css.property "overflow-wrap" "break-word"


{-| This class has the effect of following css declaration:

```css
.brightness-0 {
  --tw-brightness: brightness(0)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
brightness_0 : Css.Style
brightness_0 =
    Css.property "--tw-brightness" "brightness(0)"


{-| This class has the effect of following css declaration:

```css
.brightness-100 {
  --tw-brightness: brightness(1)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
brightness_100 : Css.Style
brightness_100 =
    Css.property "--tw-brightness" "brightness(1)"


{-| This class has the effect of following css declaration:

```css
.brightness-105 {
  --tw-brightness: brightness(1.05)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
brightness_105 : Css.Style
brightness_105 =
    Css.property "--tw-brightness" "brightness(1.05)"


{-| This class has the effect of following css declaration:

```css
.brightness-110 {
  --tw-brightness: brightness(1.1)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
brightness_110 : Css.Style
brightness_110 =
    Css.property "--tw-brightness" "brightness(1.1)"


{-| This class has the effect of following css declaration:

```css
.brightness-125 {
  --tw-brightness: brightness(1.25)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
brightness_125 : Css.Style
brightness_125 =
    Css.property "--tw-brightness" "brightness(1.25)"


{-| This class has the effect of following css declaration:

```css
.brightness-150 {
  --tw-brightness: brightness(1.5)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
brightness_150 : Css.Style
brightness_150 =
    Css.property "--tw-brightness" "brightness(1.5)"


{-| This class has the effect of following css declaration:

```css
.brightness-200 {
  --tw-brightness: brightness(2)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
brightness_200 : Css.Style
brightness_200 =
    Css.property "--tw-brightness" "brightness(2)"


{-| This class has the effect of following css declaration:

```css
.brightness-50 {
  --tw-brightness: brightness(.5)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
brightness_50 : Css.Style
brightness_50 =
    Css.property "--tw-brightness" "brightness(.5)"


{-| This class has the effect of following css declaration:

```css
.brightness-75 {
  --tw-brightness: brightness(.75)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
brightness_75 : Css.Style
brightness_75 =
    Css.property "--tw-brightness" "brightness(.75)"


{-| This class has the effect of following css declaration:

```css
.brightness-90 {
  --tw-brightness: brightness(.9)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
brightness_90 : Css.Style
brightness_90 =
    Css.property "--tw-brightness" "brightness(.9)"


{-| This class has the effect of following css declaration:

```css
.brightness-95 {
  --tw-brightness: brightness(.95)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
brightness_95 : Css.Style
brightness_95 =
    Css.property "--tw-brightness" "brightness(.95)"


{-| This class has the effect of following css declaration:

```css
.capitalize {
  text-transform: capitalize
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
capitalize : Css.Style
capitalize =
    Css.property "text-transform" "capitalize"


{-| This class has the effect of following css declaration:

```css
.clear-both {
  clear: both
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
clear_both : Css.Style
clear_both =
    Css.property "clear" "both"


{-| This class has the effect of following css declaration:

```css
.clear-left {
  clear: left
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
clear_left : Css.Style
clear_left =
    Css.property "clear" "left"


{-| This class has the effect of following css declaration:

```css
.clear-none {
  clear: none
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
clear_none : Css.Style
clear_none =
    Css.property "clear" "none"


{-| This class has the effect of following css declaration:

```css
.clear-right {
  clear: right
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
clear_right : Css.Style
clear_right =
    Css.property "clear" "right"


{-| This class has the effect of following css declaration:

```css
.col-auto {
  grid-column: auto
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
col_auto : Css.Style
col_auto =
    Css.property "grid-column" "auto"


{-| This class has the effect of following css declaration:

```css
.col-end-1 {
  grid-column-end: 1
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
col_end_1 : Css.Style
col_end_1 =
    Css.property "grid-column-end" "1"


{-| This class has the effect of following css declaration:

```css
.col-end-10 {
  grid-column-end: 10
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
col_end_10 : Css.Style
col_end_10 =
    Css.property "grid-column-end" "10"


{-| This class has the effect of following css declaration:

```css
.col-end-11 {
  grid-column-end: 11
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
col_end_11 : Css.Style
col_end_11 =
    Css.property "grid-column-end" "11"


{-| This class has the effect of following css declaration:

```css
.col-end-12 {
  grid-column-end: 12
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
col_end_12 : Css.Style
col_end_12 =
    Css.property "grid-column-end" "12"


{-| This class has the effect of following css declaration:

```css
.col-end-13 {
  grid-column-end: 13
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
col_end_13 : Css.Style
col_end_13 =
    Css.property "grid-column-end" "13"


{-| This class has the effect of following css declaration:

```css
.col-end-2 {
  grid-column-end: 2
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
col_end_2 : Css.Style
col_end_2 =
    Css.property "grid-column-end" "2"


{-| This class has the effect of following css declaration:

```css
.col-end-3 {
  grid-column-end: 3
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
col_end_3 : Css.Style
col_end_3 =
    Css.property "grid-column-end" "3"


{-| This class has the effect of following css declaration:

```css
.col-end-4 {
  grid-column-end: 4
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
col_end_4 : Css.Style
col_end_4 =
    Css.property "grid-column-end" "4"


{-| This class has the effect of following css declaration:

```css
.col-end-5 {
  grid-column-end: 5
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
col_end_5 : Css.Style
col_end_5 =
    Css.property "grid-column-end" "5"


{-| This class has the effect of following css declaration:

```css
.col-end-6 {
  grid-column-end: 6
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
col_end_6 : Css.Style
col_end_6 =
    Css.property "grid-column-end" "6"


{-| This class has the effect of following css declaration:

```css
.col-end-7 {
  grid-column-end: 7
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
col_end_7 : Css.Style
col_end_7 =
    Css.property "grid-column-end" "7"


{-| This class has the effect of following css declaration:

```css
.col-end-8 {
  grid-column-end: 8
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
col_end_8 : Css.Style
col_end_8 =
    Css.property "grid-column-end" "8"


{-| This class has the effect of following css declaration:

```css
.col-end-9 {
  grid-column-end: 9
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
col_end_9 : Css.Style
col_end_9 =
    Css.property "grid-column-end" "9"


{-| This class has the effect of following css declaration:

```css
.col-end-auto {
  grid-column-end: auto
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
col_end_auto : Css.Style
col_end_auto =
    Css.property "grid-column-end" "auto"


{-| This class has the effect of following css declaration:

```css
.col-span-1 {
  grid-column: span 1 / span 1
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
col_span_1 : Css.Style
col_span_1 =
    Css.property "grid-column" "span 1 / span 1"


{-| This class has the effect of following css declaration:

```css
.col-span-10 {
  grid-column: span 10 / span 10
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
col_span_10 : Css.Style
col_span_10 =
    Css.property "grid-column" "span 10 / span 10"


{-| This class has the effect of following css declaration:

```css
.col-span-11 {
  grid-column: span 11 / span 11
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
col_span_11 : Css.Style
col_span_11 =
    Css.property "grid-column" "span 11 / span 11"


{-| This class has the effect of following css declaration:

```css
.col-span-12 {
  grid-column: span 12 / span 12
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
col_span_12 : Css.Style
col_span_12 =
    Css.property "grid-column" "span 12 / span 12"


{-| This class has the effect of following css declaration:

```css
.col-span-2 {
  grid-column: span 2 / span 2
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
col_span_2 : Css.Style
col_span_2 =
    Css.property "grid-column" "span 2 / span 2"


{-| This class has the effect of following css declaration:

```css
.col-span-3 {
  grid-column: span 3 / span 3
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
col_span_3 : Css.Style
col_span_3 =
    Css.property "grid-column" "span 3 / span 3"


{-| This class has the effect of following css declaration:

```css
.col-span-4 {
  grid-column: span 4 / span 4
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
col_span_4 : Css.Style
col_span_4 =
    Css.property "grid-column" "span 4 / span 4"


{-| This class has the effect of following css declaration:

```css
.col-span-5 {
  grid-column: span 5 / span 5
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
col_span_5 : Css.Style
col_span_5 =
    Css.property "grid-column" "span 5 / span 5"


{-| This class has the effect of following css declaration:

```css
.col-span-6 {
  grid-column: span 6 / span 6
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
col_span_6 : Css.Style
col_span_6 =
    Css.property "grid-column" "span 6 / span 6"


{-| This class has the effect of following css declaration:

```css
.col-span-7 {
  grid-column: span 7 / span 7
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
col_span_7 : Css.Style
col_span_7 =
    Css.property "grid-column" "span 7 / span 7"


{-| This class has the effect of following css declaration:

```css
.col-span-8 {
  grid-column: span 8 / span 8
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
col_span_8 : Css.Style
col_span_8 =
    Css.property "grid-column" "span 8 / span 8"


{-| This class has the effect of following css declaration:

```css
.col-span-9 {
  grid-column: span 9 / span 9
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
col_span_9 : Css.Style
col_span_9 =
    Css.property "grid-column" "span 9 / span 9"


{-| This class has the effect of following css declaration:

```css
.col-span-full {
  grid-column: 1 / -1
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
col_span_full : Css.Style
col_span_full =
    Css.property "grid-column" "1 / -1"


{-| This class has the effect of following css declaration:

```css
.col-start-1 {
  grid-column-start: 1
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
col_start_1 : Css.Style
col_start_1 =
    Css.property "grid-column-start" "1"


{-| This class has the effect of following css declaration:

```css
.col-start-10 {
  grid-column-start: 10
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
col_start_10 : Css.Style
col_start_10 =
    Css.property "grid-column-start" "10"


{-| This class has the effect of following css declaration:

```css
.col-start-11 {
  grid-column-start: 11
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
col_start_11 : Css.Style
col_start_11 =
    Css.property "grid-column-start" "11"


{-| This class has the effect of following css declaration:

```css
.col-start-12 {
  grid-column-start: 12
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
col_start_12 : Css.Style
col_start_12 =
    Css.property "grid-column-start" "12"


{-| This class has the effect of following css declaration:

```css
.col-start-13 {
  grid-column-start: 13
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
col_start_13 : Css.Style
col_start_13 =
    Css.property "grid-column-start" "13"


{-| This class has the effect of following css declaration:

```css
.col-start-2 {
  grid-column-start: 2
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
col_start_2 : Css.Style
col_start_2 =
    Css.property "grid-column-start" "2"


{-| This class has the effect of following css declaration:

```css
.col-start-3 {
  grid-column-start: 3
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
col_start_3 : Css.Style
col_start_3 =
    Css.property "grid-column-start" "3"


{-| This class has the effect of following css declaration:

```css
.col-start-4 {
  grid-column-start: 4
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
col_start_4 : Css.Style
col_start_4 =
    Css.property "grid-column-start" "4"


{-| This class has the effect of following css declaration:

```css
.col-start-5 {
  grid-column-start: 5
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
col_start_5 : Css.Style
col_start_5 =
    Css.property "grid-column-start" "5"


{-| This class has the effect of following css declaration:

```css
.col-start-6 {
  grid-column-start: 6
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
col_start_6 : Css.Style
col_start_6 =
    Css.property "grid-column-start" "6"


{-| This class has the effect of following css declaration:

```css
.col-start-7 {
  grid-column-start: 7
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
col_start_7 : Css.Style
col_start_7 =
    Css.property "grid-column-start" "7"


{-| This class has the effect of following css declaration:

```css
.col-start-8 {
  grid-column-start: 8
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
col_start_8 : Css.Style
col_start_8 =
    Css.property "grid-column-start" "8"


{-| This class has the effect of following css declaration:

```css
.col-start-9 {
  grid-column-start: 9
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
col_start_9 : Css.Style
col_start_9 =
    Css.property "grid-column-start" "9"


{-| This class has the effect of following css declaration:

```css
.col-start-auto {
  grid-column-start: auto
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
col_start_auto : Css.Style
col_start_auto =
    Css.property "grid-column-start" "auto"


{-| This class combines the effects of following css declarations:

```css
.container {
  width: 100%
}

@media (min-width: 640px) {
}

@media (min-width: 768px) {
}

@media (min-width: 1024px) {
}

@media (min-width: 1280px) {
}

@media (min-width: 1536px) {
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
container : Css.Style
container =
    Css.batch
        [ Css.property "width" "100%"
        , Css.Media.withMediaQuery [ "(min-width: 1536px)" ]
            [ Css.property "max-width" "1536px"
            ]
        , Css.Media.withMediaQuery [ "(min-width: 1280px)" ]
            [ Css.property "max-width" "1280px"
            ]
        , Css.Media.withMediaQuery [ "(min-width: 1024px)" ]
            [ Css.property "max-width" "1024px"
            ]
        , Css.Media.withMediaQuery [ "(min-width: 768px)" ]
            [ Css.property "max-width" "768px"
            ]
        , Css.Media.withMediaQuery [ "(min-width: 640px)" ]
            [ Css.property "max-width" "640px"
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.content-around {
  align-content: space-around
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
content_around : Css.Style
content_around =
    Css.property "align-content" "space-around"


{-| This class has the effect of following css declaration:

```css
.content-between {
  align-content: space-between
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
content_between : Css.Style
content_between =
    Css.property "align-content" "space-between"


{-| This class has the effect of following css declaration:

```css
.content-center {
  align-content: center
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
content_center : Css.Style
content_center =
    Css.property "align-content" "center"


{-| This class has the effect of following css declaration:

```css
.content-end {
  align-content: flex-end
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
content_end : Css.Style
content_end =
    Css.property "align-content" "flex-end"


{-| This class has the effect of following css declaration:

```css
.content-evenly {
  align-content: space-evenly
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
content_evenly : Css.Style
content_evenly =
    Css.property "align-content" "space-evenly"


{-| This class has the effect of following css declaration:

```css
.content-start {
  align-content: flex-start
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
content_start : Css.Style
content_start =
    Css.property "align-content" "flex-start"


{-| This class has the effect of following css declaration:

```css
.contents {
  display: contents
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
contents : Css.Style
contents =
    Css.property "display" "contents"


{-| This class has the effect of following css declaration:

```css
.contrast-0 {
  --tw-contrast: contrast(0)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
contrast_0 : Css.Style
contrast_0 =
    Css.property "--tw-contrast" "contrast(0)"


{-| This class has the effect of following css declaration:

```css
.contrast-100 {
  --tw-contrast: contrast(1)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
contrast_100 : Css.Style
contrast_100 =
    Css.property "--tw-contrast" "contrast(1)"


{-| This class has the effect of following css declaration:

```css
.contrast-125 {
  --tw-contrast: contrast(1.25)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
contrast_125 : Css.Style
contrast_125 =
    Css.property "--tw-contrast" "contrast(1.25)"


{-| This class has the effect of following css declaration:

```css
.contrast-150 {
  --tw-contrast: contrast(1.5)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
contrast_150 : Css.Style
contrast_150 =
    Css.property "--tw-contrast" "contrast(1.5)"


{-| This class has the effect of following css declaration:

```css
.contrast-200 {
  --tw-contrast: contrast(2)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
contrast_200 : Css.Style
contrast_200 =
    Css.property "--tw-contrast" "contrast(2)"


{-| This class has the effect of following css declaration:

```css
.contrast-50 {
  --tw-contrast: contrast(.5)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
contrast_50 : Css.Style
contrast_50 =
    Css.property "--tw-contrast" "contrast(.5)"


{-| This class has the effect of following css declaration:

```css
.contrast-75 {
  --tw-contrast: contrast(.75)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
contrast_75 : Css.Style
contrast_75 =
    Css.property "--tw-contrast" "contrast(.75)"


{-| This class has the effect of following css declaration:

```css
.cursor-auto {
  cursor: auto
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
cursor_auto : Css.Style
cursor_auto =
    Css.property "cursor" "auto"


{-| This class has the effect of following css declaration:

```css
.cursor-default {
  cursor: default
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
cursor_default : Css.Style
cursor_default =
    Css.property "cursor" "default"


{-| This class has the effect of following css declaration:

```css
.cursor-help {
  cursor: help
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
cursor_help : Css.Style
cursor_help =
    Css.property "cursor" "help"


{-| This class has the effect of following css declaration:

```css
.cursor-move {
  cursor: move
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
cursor_move : Css.Style
cursor_move =
    Css.property "cursor" "move"


{-| This class has the effect of following css declaration:

```css
.cursor-not-allowed {
  cursor: not-allowed
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
cursor_not_allowed : Css.Style
cursor_not_allowed =
    Css.property "cursor" "not-allowed"


{-| This class has the effect of following css declaration:

```css
.cursor-pointer {
  cursor: pointer
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
cursor_pointer : Css.Style
cursor_pointer =
    Css.property "cursor" "pointer"


{-| This class has the effect of following css declaration:

```css
.cursor-text {
  cursor: text
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
cursor_text : Css.Style
cursor_text =
    Css.property "cursor" "text"


{-| This class has the effect of following css declaration:

```css
.cursor-wait {
  cursor: wait
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
cursor_wait : Css.Style
cursor_wait =
    Css.property "cursor" "wait"


{-| This class has the effect of following css declaration:

```css
.decoration-clone {
  box-decoration-break: clone
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
decoration_clone : Css.Style
decoration_clone =
    Css.property "box-decoration-break" "clone"


{-| This class has the effect of following css declaration:

```css
.decoration-slice {
  box-decoration-break: slice
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
decoration_slice : Css.Style
decoration_slice =
    Css.property "box-decoration-break" "slice"


{-| This class has the effect of following css declaration:

```css
.delay-100 {
  transition-delay: 100ms
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
delay_100 : Css.Style
delay_100 =
    Css.property "transition-delay" "100ms"


{-| This class has the effect of following css declaration:

```css
.delay-1000 {
  transition-delay: 1000ms
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
delay_1000 : Css.Style
delay_1000 =
    Css.property "transition-delay" "1000ms"


{-| This class has the effect of following css declaration:

```css
.delay-150 {
  transition-delay: 150ms
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
delay_150 : Css.Style
delay_150 =
    Css.property "transition-delay" "150ms"


{-| This class has the effect of following css declaration:

```css
.delay-200 {
  transition-delay: 200ms
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
delay_200 : Css.Style
delay_200 =
    Css.property "transition-delay" "200ms"


{-| This class has the effect of following css declaration:

```css
.delay-300 {
  transition-delay: 300ms
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
delay_300 : Css.Style
delay_300 =
    Css.property "transition-delay" "300ms"


{-| This class has the effect of following css declaration:

```css
.delay-500 {
  transition-delay: 500ms
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
delay_500 : Css.Style
delay_500 =
    Css.property "transition-delay" "500ms"


{-| This class has the effect of following css declaration:

```css
.delay-700 {
  transition-delay: 700ms
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
delay_700 : Css.Style
delay_700 =
    Css.property "transition-delay" "700ms"


{-| This class has the effect of following css declaration:

```css
.delay-75 {
  transition-delay: 75ms
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
delay_75 : Css.Style
delay_75 =
    Css.property "transition-delay" "75ms"


{-| This class combines the effects of following css declarations:

```css
.ordinal, .slashed-zero, .lining-nums, .oldstyle-nums, .proportional-nums, .tabular-nums, .diagonal-fractions, .stacked-fractions {
  --tw-ordinal: var(--tw-empty,/*!*/ /*!*/);
  --tw-slashed-zero: var(--tw-empty,/*!*/ /*!*/);
  --tw-numeric-figure: var(--tw-empty,/*!*/ /*!*/);
  --tw-numeric-spacing: var(--tw-empty,/*!*/ /*!*/);
  --tw-numeric-fraction: var(--tw-empty,/*!*/ /*!*/);
  font-variant-numeric: var(--tw-ordinal) var(--tw-slashed-zero) var(--tw-numeric-figure) var(--tw-numeric-spacing) var(--tw-numeric-fraction)
}

.diagonal-fractions {
  --tw-numeric-fraction: diagonal-fractions
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
diagonal_fractions : Css.Style
diagonal_fractions =
    Css.batch
        [ Css.property "--tw-ordinal" "var(--tw-empty,/*!*/ /*!*/)"
        , Css.property "--tw-slashed-zero" "var(--tw-empty,/*!*/ /*!*/)"
        , Css.property "--tw-numeric-figure" "var(--tw-empty,/*!*/ /*!*/)"
        , Css.property "--tw-numeric-spacing" "var(--tw-empty,/*!*/ /*!*/)"
        , Css.property "--tw-numeric-fraction" "var(--tw-empty,/*!*/ /*!*/)"
        , Css.property "font-variant-numeric" "var(--tw-ordinal) var(--tw-slashed-zero) var(--tw-numeric-figure) var(--tw-numeric-spacing) var(--tw-numeric-fraction)"
        , Css.property "--tw-numeric-fraction" "diagonal-fractions"
        ]


{-| This class has the effect of following css declaration:

```css
.divide-black > :not([hidden]) ~ :not([hidden]) {
  --tw-divide-opacity: 1;
  border-color: rgba(0, 0, 0, var(--tw-divide-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
divide_black : Css.Style
divide_black =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-opacity" "1"
                , Css.property "border-color" "rgba(0, 0, 0, var(--tw-divide-opacity))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.divide-blue-100 > :not([hidden]) ~ :not([hidden]) {
  --tw-divide-opacity: 1;
  border-color: rgba(235, 248, 255, var(--tw-divide-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
divide_blue_100 : Css.Style
divide_blue_100 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-opacity" "1"
                , Css.property "border-color" "rgba(235, 248, 255, var(--tw-divide-opacity))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.divide-blue-200 > :not([hidden]) ~ :not([hidden]) {
  --tw-divide-opacity: 1;
  border-color: rgba(190, 227, 248, var(--tw-divide-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
divide_blue_200 : Css.Style
divide_blue_200 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-opacity" "1"
                , Css.property "border-color" "rgba(190, 227, 248, var(--tw-divide-opacity))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.divide-blue-300 > :not([hidden]) ~ :not([hidden]) {
  --tw-divide-opacity: 1;
  border-color: rgba(144, 205, 244, var(--tw-divide-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
divide_blue_300 : Css.Style
divide_blue_300 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-opacity" "1"
                , Css.property "border-color" "rgba(144, 205, 244, var(--tw-divide-opacity))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.divide-blue-400 > :not([hidden]) ~ :not([hidden]) {
  --tw-divide-opacity: 1;
  border-color: rgba(99, 179, 237, var(--tw-divide-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
divide_blue_400 : Css.Style
divide_blue_400 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-opacity" "1"
                , Css.property "border-color" "rgba(99, 179, 237, var(--tw-divide-opacity))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.divide-blue-500 > :not([hidden]) ~ :not([hidden]) {
  --tw-divide-opacity: 1;
  border-color: rgba(66, 153, 225, var(--tw-divide-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
divide_blue_500 : Css.Style
divide_blue_500 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-opacity" "1"
                , Css.property "border-color" "rgba(66, 153, 225, var(--tw-divide-opacity))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.divide-blue-600 > :not([hidden]) ~ :not([hidden]) {
  --tw-divide-opacity: 1;
  border-color: rgba(49, 130, 206, var(--tw-divide-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
divide_blue_600 : Css.Style
divide_blue_600 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-opacity" "1"
                , Css.property "border-color" "rgba(49, 130, 206, var(--tw-divide-opacity))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.divide-blue-700 > :not([hidden]) ~ :not([hidden]) {
  --tw-divide-opacity: 1;
  border-color: rgba(43, 108, 176, var(--tw-divide-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
divide_blue_700 : Css.Style
divide_blue_700 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-opacity" "1"
                , Css.property "border-color" "rgba(43, 108, 176, var(--tw-divide-opacity))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.divide-blue-800 > :not([hidden]) ~ :not([hidden]) {
  --tw-divide-opacity: 1;
  border-color: rgba(44, 82, 130, var(--tw-divide-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
divide_blue_800 : Css.Style
divide_blue_800 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-opacity" "1"
                , Css.property "border-color" "rgba(44, 82, 130, var(--tw-divide-opacity))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.divide-blue-900 > :not([hidden]) ~ :not([hidden]) {
  --tw-divide-opacity: 1;
  border-color: rgba(42, 67, 101, var(--tw-divide-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
divide_blue_900 : Css.Style
divide_blue_900 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-opacity" "1"
                , Css.property "border-color" "rgba(42, 67, 101, var(--tw-divide-opacity))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.divide-current > :not([hidden]) ~ :not([hidden]) {
  border-color: currentColor
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
divide_current : Css.Style
divide_current =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "border-color" "currentColor"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.divide-dashed > :not([hidden]) ~ :not([hidden]) {
  border-style: dashed
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
divide_dashed : Css.Style
divide_dashed =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "border-style" "dashed"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.divide-dotted > :not([hidden]) ~ :not([hidden]) {
  border-style: dotted
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
divide_dotted : Css.Style
divide_dotted =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "border-style" "dotted"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.divide-double > :not([hidden]) ~ :not([hidden]) {
  border-style: double
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
divide_double : Css.Style
divide_double =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "border-style" "double"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.divide-gray-100 > :not([hidden]) ~ :not([hidden]) {
  --tw-divide-opacity: 1;
  border-color: rgba(247, 250, 252, var(--tw-divide-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
divide_gray_100 : Css.Style
divide_gray_100 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-opacity" "1"
                , Css.property "border-color" "rgba(247, 250, 252, var(--tw-divide-opacity))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.divide-gray-200 > :not([hidden]) ~ :not([hidden]) {
  --tw-divide-opacity: 1;
  border-color: rgba(237, 242, 247, var(--tw-divide-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
divide_gray_200 : Css.Style
divide_gray_200 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-opacity" "1"
                , Css.property "border-color" "rgba(237, 242, 247, var(--tw-divide-opacity))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.divide-gray-300 > :not([hidden]) ~ :not([hidden]) {
  --tw-divide-opacity: 1;
  border-color: rgba(226, 232, 240, var(--tw-divide-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
divide_gray_300 : Css.Style
divide_gray_300 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-opacity" "1"
                , Css.property "border-color" "rgba(226, 232, 240, var(--tw-divide-opacity))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.divide-gray-400 > :not([hidden]) ~ :not([hidden]) {
  --tw-divide-opacity: 1;
  border-color: rgba(203, 213, 224, var(--tw-divide-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
divide_gray_400 : Css.Style
divide_gray_400 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-opacity" "1"
                , Css.property "border-color" "rgba(203, 213, 224, var(--tw-divide-opacity))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.divide-gray-500 > :not([hidden]) ~ :not([hidden]) {
  --tw-divide-opacity: 1;
  border-color: rgba(160, 174, 192, var(--tw-divide-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
divide_gray_500 : Css.Style
divide_gray_500 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-opacity" "1"
                , Css.property "border-color" "rgba(160, 174, 192, var(--tw-divide-opacity))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.divide-gray-600 > :not([hidden]) ~ :not([hidden]) {
  --tw-divide-opacity: 1;
  border-color: rgba(113, 128, 150, var(--tw-divide-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
divide_gray_600 : Css.Style
divide_gray_600 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-opacity" "1"
                , Css.property "border-color" "rgba(113, 128, 150, var(--tw-divide-opacity))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.divide-gray-700 > :not([hidden]) ~ :not([hidden]) {
  --tw-divide-opacity: 1;
  border-color: rgba(74, 85, 104, var(--tw-divide-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
divide_gray_700 : Css.Style
divide_gray_700 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-opacity" "1"
                , Css.property "border-color" "rgba(74, 85, 104, var(--tw-divide-opacity))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.divide-gray-800 > :not([hidden]) ~ :not([hidden]) {
  --tw-divide-opacity: 1;
  border-color: rgba(45, 55, 72, var(--tw-divide-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
divide_gray_800 : Css.Style
divide_gray_800 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-opacity" "1"
                , Css.property "border-color" "rgba(45, 55, 72, var(--tw-divide-opacity))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.divide-gray-900 > :not([hidden]) ~ :not([hidden]) {
  --tw-divide-opacity: 1;
  border-color: rgba(26, 32, 44, var(--tw-divide-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
divide_gray_900 : Css.Style
divide_gray_900 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-opacity" "1"
                , Css.property "border-color" "rgba(26, 32, 44, var(--tw-divide-opacity))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.divide-green-100 > :not([hidden]) ~ :not([hidden]) {
  --tw-divide-opacity: 1;
  border-color: rgba(240, 255, 244, var(--tw-divide-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
divide_green_100 : Css.Style
divide_green_100 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-opacity" "1"
                , Css.property "border-color" "rgba(240, 255, 244, var(--tw-divide-opacity))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.divide-green-200 > :not([hidden]) ~ :not([hidden]) {
  --tw-divide-opacity: 1;
  border-color: rgba(198, 246, 213, var(--tw-divide-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
divide_green_200 : Css.Style
divide_green_200 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-opacity" "1"
                , Css.property "border-color" "rgba(198, 246, 213, var(--tw-divide-opacity))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.divide-green-300 > :not([hidden]) ~ :not([hidden]) {
  --tw-divide-opacity: 1;
  border-color: rgba(154, 230, 180, var(--tw-divide-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
divide_green_300 : Css.Style
divide_green_300 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-opacity" "1"
                , Css.property "border-color" "rgba(154, 230, 180, var(--tw-divide-opacity))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.divide-green-400 > :not([hidden]) ~ :not([hidden]) {
  --tw-divide-opacity: 1;
  border-color: rgba(104, 211, 145, var(--tw-divide-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
divide_green_400 : Css.Style
divide_green_400 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-opacity" "1"
                , Css.property "border-color" "rgba(104, 211, 145, var(--tw-divide-opacity))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.divide-green-500 > :not([hidden]) ~ :not([hidden]) {
  --tw-divide-opacity: 1;
  border-color: rgba(72, 187, 120, var(--tw-divide-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
divide_green_500 : Css.Style
divide_green_500 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-opacity" "1"
                , Css.property "border-color" "rgba(72, 187, 120, var(--tw-divide-opacity))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.divide-green-600 > :not([hidden]) ~ :not([hidden]) {
  --tw-divide-opacity: 1;
  border-color: rgba(56, 161, 105, var(--tw-divide-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
divide_green_600 : Css.Style
divide_green_600 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-opacity" "1"
                , Css.property "border-color" "rgba(56, 161, 105, var(--tw-divide-opacity))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.divide-green-700 > :not([hidden]) ~ :not([hidden]) {
  --tw-divide-opacity: 1;
  border-color: rgba(47, 133, 90, var(--tw-divide-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
divide_green_700 : Css.Style
divide_green_700 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-opacity" "1"
                , Css.property "border-color" "rgba(47, 133, 90, var(--tw-divide-opacity))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.divide-green-800 > :not([hidden]) ~ :not([hidden]) {
  --tw-divide-opacity: 1;
  border-color: rgba(39, 103, 73, var(--tw-divide-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
divide_green_800 : Css.Style
divide_green_800 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-opacity" "1"
                , Css.property "border-color" "rgba(39, 103, 73, var(--tw-divide-opacity))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.divide-green-900 > :not([hidden]) ~ :not([hidden]) {
  --tw-divide-opacity: 1;
  border-color: rgba(34, 84, 61, var(--tw-divide-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
divide_green_900 : Css.Style
divide_green_900 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-opacity" "1"
                , Css.property "border-color" "rgba(34, 84, 61, var(--tw-divide-opacity))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.divide-indigo-100 > :not([hidden]) ~ :not([hidden]) {
  --tw-divide-opacity: 1;
  border-color: rgba(235, 244, 255, var(--tw-divide-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
divide_indigo_100 : Css.Style
divide_indigo_100 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-opacity" "1"
                , Css.property "border-color" "rgba(235, 244, 255, var(--tw-divide-opacity))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.divide-indigo-200 > :not([hidden]) ~ :not([hidden]) {
  --tw-divide-opacity: 1;
  border-color: rgba(195, 218, 254, var(--tw-divide-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
divide_indigo_200 : Css.Style
divide_indigo_200 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-opacity" "1"
                , Css.property "border-color" "rgba(195, 218, 254, var(--tw-divide-opacity))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.divide-indigo-300 > :not([hidden]) ~ :not([hidden]) {
  --tw-divide-opacity: 1;
  border-color: rgba(163, 191, 250, var(--tw-divide-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
divide_indigo_300 : Css.Style
divide_indigo_300 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-opacity" "1"
                , Css.property "border-color" "rgba(163, 191, 250, var(--tw-divide-opacity))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.divide-indigo-400 > :not([hidden]) ~ :not([hidden]) {
  --tw-divide-opacity: 1;
  border-color: rgba(127, 156, 245, var(--tw-divide-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
divide_indigo_400 : Css.Style
divide_indigo_400 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-opacity" "1"
                , Css.property "border-color" "rgba(127, 156, 245, var(--tw-divide-opacity))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.divide-indigo-500 > :not([hidden]) ~ :not([hidden]) {
  --tw-divide-opacity: 1;
  border-color: rgba(102, 126, 234, var(--tw-divide-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
divide_indigo_500 : Css.Style
divide_indigo_500 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-opacity" "1"
                , Css.property "border-color" "rgba(102, 126, 234, var(--tw-divide-opacity))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.divide-indigo-600 > :not([hidden]) ~ :not([hidden]) {
  --tw-divide-opacity: 1;
  border-color: rgba(90, 103, 216, var(--tw-divide-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
divide_indigo_600 : Css.Style
divide_indigo_600 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-opacity" "1"
                , Css.property "border-color" "rgba(90, 103, 216, var(--tw-divide-opacity))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.divide-indigo-700 > :not([hidden]) ~ :not([hidden]) {
  --tw-divide-opacity: 1;
  border-color: rgba(76, 81, 191, var(--tw-divide-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
divide_indigo_700 : Css.Style
divide_indigo_700 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-opacity" "1"
                , Css.property "border-color" "rgba(76, 81, 191, var(--tw-divide-opacity))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.divide-indigo-800 > :not([hidden]) ~ :not([hidden]) {
  --tw-divide-opacity: 1;
  border-color: rgba(67, 65, 144, var(--tw-divide-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
divide_indigo_800 : Css.Style
divide_indigo_800 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-opacity" "1"
                , Css.property "border-color" "rgba(67, 65, 144, var(--tw-divide-opacity))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.divide-indigo-900 > :not([hidden]) ~ :not([hidden]) {
  --tw-divide-opacity: 1;
  border-color: rgba(60, 54, 107, var(--tw-divide-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
divide_indigo_900 : Css.Style
divide_indigo_900 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-opacity" "1"
                , Css.property "border-color" "rgba(60, 54, 107, var(--tw-divide-opacity))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.divide-none > :not([hidden]) ~ :not([hidden]) {
  border-style: none
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
divide_none : Css.Style
divide_none =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "border-style" "none"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.divide-opacity-0 > :not([hidden]) ~ :not([hidden]) {
  --tw-divide-opacity: 0
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
divide_opacity_0 : Css.Style
divide_opacity_0 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-opacity" "0"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.divide-opacity-10 > :not([hidden]) ~ :not([hidden]) {
  --tw-divide-opacity: 0.1
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
divide_opacity_10 : Css.Style
divide_opacity_10 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-opacity" "0.1"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.divide-opacity-100 > :not([hidden]) ~ :not([hidden]) {
  --tw-divide-opacity: 1
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
divide_opacity_100 : Css.Style
divide_opacity_100 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-opacity" "1"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.divide-opacity-20 > :not([hidden]) ~ :not([hidden]) {
  --tw-divide-opacity: 0.2
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
divide_opacity_20 : Css.Style
divide_opacity_20 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-opacity" "0.2"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.divide-opacity-25 > :not([hidden]) ~ :not([hidden]) {
  --tw-divide-opacity: 0.25
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
divide_opacity_25 : Css.Style
divide_opacity_25 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-opacity" "0.25"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.divide-opacity-30 > :not([hidden]) ~ :not([hidden]) {
  --tw-divide-opacity: 0.3
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
divide_opacity_30 : Css.Style
divide_opacity_30 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-opacity" "0.3"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.divide-opacity-40 > :not([hidden]) ~ :not([hidden]) {
  --tw-divide-opacity: 0.4
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
divide_opacity_40 : Css.Style
divide_opacity_40 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-opacity" "0.4"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.divide-opacity-5 > :not([hidden]) ~ :not([hidden]) {
  --tw-divide-opacity: 0.05
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
divide_opacity_5 : Css.Style
divide_opacity_5 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-opacity" "0.05"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.divide-opacity-50 > :not([hidden]) ~ :not([hidden]) {
  --tw-divide-opacity: 0.5
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
divide_opacity_50 : Css.Style
divide_opacity_50 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-opacity" "0.5"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.divide-opacity-60 > :not([hidden]) ~ :not([hidden]) {
  --tw-divide-opacity: 0.6
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
divide_opacity_60 : Css.Style
divide_opacity_60 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-opacity" "0.6"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.divide-opacity-70 > :not([hidden]) ~ :not([hidden]) {
  --tw-divide-opacity: 0.7
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
divide_opacity_70 : Css.Style
divide_opacity_70 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-opacity" "0.7"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.divide-opacity-75 > :not([hidden]) ~ :not([hidden]) {
  --tw-divide-opacity: 0.75
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
divide_opacity_75 : Css.Style
divide_opacity_75 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-opacity" "0.75"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.divide-opacity-80 > :not([hidden]) ~ :not([hidden]) {
  --tw-divide-opacity: 0.8
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
divide_opacity_80 : Css.Style
divide_opacity_80 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-opacity" "0.8"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.divide-opacity-90 > :not([hidden]) ~ :not([hidden]) {
  --tw-divide-opacity: 0.9
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
divide_opacity_90 : Css.Style
divide_opacity_90 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-opacity" "0.9"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.divide-opacity-95 > :not([hidden]) ~ :not([hidden]) {
  --tw-divide-opacity: 0.95
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
divide_opacity_95 : Css.Style
divide_opacity_95 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-opacity" "0.95"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.divide-orange-100 > :not([hidden]) ~ :not([hidden]) {
  --tw-divide-opacity: 1;
  border-color: rgba(255, 250, 240, var(--tw-divide-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
divide_orange_100 : Css.Style
divide_orange_100 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-opacity" "1"
                , Css.property "border-color" "rgba(255, 250, 240, var(--tw-divide-opacity))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.divide-orange-200 > :not([hidden]) ~ :not([hidden]) {
  --tw-divide-opacity: 1;
  border-color: rgba(254, 235, 200, var(--tw-divide-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
divide_orange_200 : Css.Style
divide_orange_200 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-opacity" "1"
                , Css.property "border-color" "rgba(254, 235, 200, var(--tw-divide-opacity))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.divide-orange-300 > :not([hidden]) ~ :not([hidden]) {
  --tw-divide-opacity: 1;
  border-color: rgba(251, 211, 141, var(--tw-divide-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
divide_orange_300 : Css.Style
divide_orange_300 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-opacity" "1"
                , Css.property "border-color" "rgba(251, 211, 141, var(--tw-divide-opacity))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.divide-orange-400 > :not([hidden]) ~ :not([hidden]) {
  --tw-divide-opacity: 1;
  border-color: rgba(246, 173, 85, var(--tw-divide-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
divide_orange_400 : Css.Style
divide_orange_400 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-opacity" "1"
                , Css.property "border-color" "rgba(246, 173, 85, var(--tw-divide-opacity))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.divide-orange-500 > :not([hidden]) ~ :not([hidden]) {
  --tw-divide-opacity: 1;
  border-color: rgba(237, 137, 54, var(--tw-divide-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
divide_orange_500 : Css.Style
divide_orange_500 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-opacity" "1"
                , Css.property "border-color" "rgba(237, 137, 54, var(--tw-divide-opacity))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.divide-orange-600 > :not([hidden]) ~ :not([hidden]) {
  --tw-divide-opacity: 1;
  border-color: rgba(221, 107, 32, var(--tw-divide-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
divide_orange_600 : Css.Style
divide_orange_600 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-opacity" "1"
                , Css.property "border-color" "rgba(221, 107, 32, var(--tw-divide-opacity))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.divide-orange-700 > :not([hidden]) ~ :not([hidden]) {
  --tw-divide-opacity: 1;
  border-color: rgba(192, 86, 33, var(--tw-divide-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
divide_orange_700 : Css.Style
divide_orange_700 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-opacity" "1"
                , Css.property "border-color" "rgba(192, 86, 33, var(--tw-divide-opacity))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.divide-orange-800 > :not([hidden]) ~ :not([hidden]) {
  --tw-divide-opacity: 1;
  border-color: rgba(156, 66, 33, var(--tw-divide-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
divide_orange_800 : Css.Style
divide_orange_800 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-opacity" "1"
                , Css.property "border-color" "rgba(156, 66, 33, var(--tw-divide-opacity))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.divide-orange-900 > :not([hidden]) ~ :not([hidden]) {
  --tw-divide-opacity: 1;
  border-color: rgba(123, 52, 30, var(--tw-divide-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
divide_orange_900 : Css.Style
divide_orange_900 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-opacity" "1"
                , Css.property "border-color" "rgba(123, 52, 30, var(--tw-divide-opacity))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.divide-pink-100 > :not([hidden]) ~ :not([hidden]) {
  --tw-divide-opacity: 1;
  border-color: rgba(255, 245, 247, var(--tw-divide-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
divide_pink_100 : Css.Style
divide_pink_100 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-opacity" "1"
                , Css.property "border-color" "rgba(255, 245, 247, var(--tw-divide-opacity))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.divide-pink-200 > :not([hidden]) ~ :not([hidden]) {
  --tw-divide-opacity: 1;
  border-color: rgba(254, 215, 226, var(--tw-divide-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
divide_pink_200 : Css.Style
divide_pink_200 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-opacity" "1"
                , Css.property "border-color" "rgba(254, 215, 226, var(--tw-divide-opacity))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.divide-pink-300 > :not([hidden]) ~ :not([hidden]) {
  --tw-divide-opacity: 1;
  border-color: rgba(251, 182, 206, var(--tw-divide-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
divide_pink_300 : Css.Style
divide_pink_300 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-opacity" "1"
                , Css.property "border-color" "rgba(251, 182, 206, var(--tw-divide-opacity))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.divide-pink-400 > :not([hidden]) ~ :not([hidden]) {
  --tw-divide-opacity: 1;
  border-color: rgba(246, 135, 179, var(--tw-divide-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
divide_pink_400 : Css.Style
divide_pink_400 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-opacity" "1"
                , Css.property "border-color" "rgba(246, 135, 179, var(--tw-divide-opacity))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.divide-pink-500 > :not([hidden]) ~ :not([hidden]) {
  --tw-divide-opacity: 1;
  border-color: rgba(237, 100, 166, var(--tw-divide-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
divide_pink_500 : Css.Style
divide_pink_500 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-opacity" "1"
                , Css.property "border-color" "rgba(237, 100, 166, var(--tw-divide-opacity))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.divide-pink-600 > :not([hidden]) ~ :not([hidden]) {
  --tw-divide-opacity: 1;
  border-color: rgba(213, 63, 140, var(--tw-divide-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
divide_pink_600 : Css.Style
divide_pink_600 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-opacity" "1"
                , Css.property "border-color" "rgba(213, 63, 140, var(--tw-divide-opacity))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.divide-pink-700 > :not([hidden]) ~ :not([hidden]) {
  --tw-divide-opacity: 1;
  border-color: rgba(184, 50, 128, var(--tw-divide-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
divide_pink_700 : Css.Style
divide_pink_700 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-opacity" "1"
                , Css.property "border-color" "rgba(184, 50, 128, var(--tw-divide-opacity))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.divide-pink-800 > :not([hidden]) ~ :not([hidden]) {
  --tw-divide-opacity: 1;
  border-color: rgba(151, 38, 109, var(--tw-divide-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
divide_pink_800 : Css.Style
divide_pink_800 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-opacity" "1"
                , Css.property "border-color" "rgba(151, 38, 109, var(--tw-divide-opacity))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.divide-pink-900 > :not([hidden]) ~ :not([hidden]) {
  --tw-divide-opacity: 1;
  border-color: rgba(112, 36, 89, var(--tw-divide-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
divide_pink_900 : Css.Style
divide_pink_900 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-opacity" "1"
                , Css.property "border-color" "rgba(112, 36, 89, var(--tw-divide-opacity))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.divide-purple-100 > :not([hidden]) ~ :not([hidden]) {
  --tw-divide-opacity: 1;
  border-color: rgba(250, 245, 255, var(--tw-divide-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
divide_purple_100 : Css.Style
divide_purple_100 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-opacity" "1"
                , Css.property "border-color" "rgba(250, 245, 255, var(--tw-divide-opacity))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.divide-purple-200 > :not([hidden]) ~ :not([hidden]) {
  --tw-divide-opacity: 1;
  border-color: rgba(233, 216, 253, var(--tw-divide-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
divide_purple_200 : Css.Style
divide_purple_200 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-opacity" "1"
                , Css.property "border-color" "rgba(233, 216, 253, var(--tw-divide-opacity))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.divide-purple-300 > :not([hidden]) ~ :not([hidden]) {
  --tw-divide-opacity: 1;
  border-color: rgba(214, 188, 250, var(--tw-divide-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
divide_purple_300 : Css.Style
divide_purple_300 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-opacity" "1"
                , Css.property "border-color" "rgba(214, 188, 250, var(--tw-divide-opacity))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.divide-purple-400 > :not([hidden]) ~ :not([hidden]) {
  --tw-divide-opacity: 1;
  border-color: rgba(183, 148, 244, var(--tw-divide-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
divide_purple_400 : Css.Style
divide_purple_400 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-opacity" "1"
                , Css.property "border-color" "rgba(183, 148, 244, var(--tw-divide-opacity))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.divide-purple-500 > :not([hidden]) ~ :not([hidden]) {
  --tw-divide-opacity: 1;
  border-color: rgba(159, 122, 234, var(--tw-divide-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
divide_purple_500 : Css.Style
divide_purple_500 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-opacity" "1"
                , Css.property "border-color" "rgba(159, 122, 234, var(--tw-divide-opacity))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.divide-purple-600 > :not([hidden]) ~ :not([hidden]) {
  --tw-divide-opacity: 1;
  border-color: rgba(128, 90, 213, var(--tw-divide-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
divide_purple_600 : Css.Style
divide_purple_600 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-opacity" "1"
                , Css.property "border-color" "rgba(128, 90, 213, var(--tw-divide-opacity))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.divide-purple-700 > :not([hidden]) ~ :not([hidden]) {
  --tw-divide-opacity: 1;
  border-color: rgba(107, 70, 193, var(--tw-divide-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
divide_purple_700 : Css.Style
divide_purple_700 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-opacity" "1"
                , Css.property "border-color" "rgba(107, 70, 193, var(--tw-divide-opacity))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.divide-purple-800 > :not([hidden]) ~ :not([hidden]) {
  --tw-divide-opacity: 1;
  border-color: rgba(85, 60, 154, var(--tw-divide-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
divide_purple_800 : Css.Style
divide_purple_800 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-opacity" "1"
                , Css.property "border-color" "rgba(85, 60, 154, var(--tw-divide-opacity))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.divide-purple-900 > :not([hidden]) ~ :not([hidden]) {
  --tw-divide-opacity: 1;
  border-color: rgba(68, 51, 122, var(--tw-divide-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
divide_purple_900 : Css.Style
divide_purple_900 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-opacity" "1"
                , Css.property "border-color" "rgba(68, 51, 122, var(--tw-divide-opacity))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.divide-red-100 > :not([hidden]) ~ :not([hidden]) {
  --tw-divide-opacity: 1;
  border-color: rgba(255, 245, 245, var(--tw-divide-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
divide_red_100 : Css.Style
divide_red_100 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-opacity" "1"
                , Css.property "border-color" "rgba(255, 245, 245, var(--tw-divide-opacity))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.divide-red-200 > :not([hidden]) ~ :not([hidden]) {
  --tw-divide-opacity: 1;
  border-color: rgba(254, 215, 215, var(--tw-divide-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
divide_red_200 : Css.Style
divide_red_200 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-opacity" "1"
                , Css.property "border-color" "rgba(254, 215, 215, var(--tw-divide-opacity))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.divide-red-300 > :not([hidden]) ~ :not([hidden]) {
  --tw-divide-opacity: 1;
  border-color: rgba(254, 178, 178, var(--tw-divide-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
divide_red_300 : Css.Style
divide_red_300 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-opacity" "1"
                , Css.property "border-color" "rgba(254, 178, 178, var(--tw-divide-opacity))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.divide-red-400 > :not([hidden]) ~ :not([hidden]) {
  --tw-divide-opacity: 1;
  border-color: rgba(252, 129, 129, var(--tw-divide-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
divide_red_400 : Css.Style
divide_red_400 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-opacity" "1"
                , Css.property "border-color" "rgba(252, 129, 129, var(--tw-divide-opacity))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.divide-red-500 > :not([hidden]) ~ :not([hidden]) {
  --tw-divide-opacity: 1;
  border-color: rgba(245, 101, 101, var(--tw-divide-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
divide_red_500 : Css.Style
divide_red_500 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-opacity" "1"
                , Css.property "border-color" "rgba(245, 101, 101, var(--tw-divide-opacity))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.divide-red-600 > :not([hidden]) ~ :not([hidden]) {
  --tw-divide-opacity: 1;
  border-color: rgba(229, 62, 62, var(--tw-divide-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
divide_red_600 : Css.Style
divide_red_600 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-opacity" "1"
                , Css.property "border-color" "rgba(229, 62, 62, var(--tw-divide-opacity))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.divide-red-700 > :not([hidden]) ~ :not([hidden]) {
  --tw-divide-opacity: 1;
  border-color: rgba(197, 48, 48, var(--tw-divide-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
divide_red_700 : Css.Style
divide_red_700 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-opacity" "1"
                , Css.property "border-color" "rgba(197, 48, 48, var(--tw-divide-opacity))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.divide-red-800 > :not([hidden]) ~ :not([hidden]) {
  --tw-divide-opacity: 1;
  border-color: rgba(155, 44, 44, var(--tw-divide-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
divide_red_800 : Css.Style
divide_red_800 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-opacity" "1"
                , Css.property "border-color" "rgba(155, 44, 44, var(--tw-divide-opacity))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.divide-red-900 > :not([hidden]) ~ :not([hidden]) {
  --tw-divide-opacity: 1;
  border-color: rgba(116, 42, 42, var(--tw-divide-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
divide_red_900 : Css.Style
divide_red_900 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-opacity" "1"
                , Css.property "border-color" "rgba(116, 42, 42, var(--tw-divide-opacity))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.divide-solid > :not([hidden]) ~ :not([hidden]) {
  border-style: solid
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
divide_solid : Css.Style
divide_solid =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "border-style" "solid"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.divide-teal-100 > :not([hidden]) ~ :not([hidden]) {
  --tw-divide-opacity: 1;
  border-color: rgba(230, 255, 250, var(--tw-divide-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
divide_teal_100 : Css.Style
divide_teal_100 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-opacity" "1"
                , Css.property "border-color" "rgba(230, 255, 250, var(--tw-divide-opacity))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.divide-teal-200 > :not([hidden]) ~ :not([hidden]) {
  --tw-divide-opacity: 1;
  border-color: rgba(178, 245, 234, var(--tw-divide-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
divide_teal_200 : Css.Style
divide_teal_200 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-opacity" "1"
                , Css.property "border-color" "rgba(178, 245, 234, var(--tw-divide-opacity))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.divide-teal-300 > :not([hidden]) ~ :not([hidden]) {
  --tw-divide-opacity: 1;
  border-color: rgba(129, 230, 217, var(--tw-divide-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
divide_teal_300 : Css.Style
divide_teal_300 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-opacity" "1"
                , Css.property "border-color" "rgba(129, 230, 217, var(--tw-divide-opacity))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.divide-teal-400 > :not([hidden]) ~ :not([hidden]) {
  --tw-divide-opacity: 1;
  border-color: rgba(79, 209, 197, var(--tw-divide-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
divide_teal_400 : Css.Style
divide_teal_400 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-opacity" "1"
                , Css.property "border-color" "rgba(79, 209, 197, var(--tw-divide-opacity))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.divide-teal-500 > :not([hidden]) ~ :not([hidden]) {
  --tw-divide-opacity: 1;
  border-color: rgba(56, 178, 172, var(--tw-divide-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
divide_teal_500 : Css.Style
divide_teal_500 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-opacity" "1"
                , Css.property "border-color" "rgba(56, 178, 172, var(--tw-divide-opacity))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.divide-teal-600 > :not([hidden]) ~ :not([hidden]) {
  --tw-divide-opacity: 1;
  border-color: rgba(49, 151, 149, var(--tw-divide-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
divide_teal_600 : Css.Style
divide_teal_600 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-opacity" "1"
                , Css.property "border-color" "rgba(49, 151, 149, var(--tw-divide-opacity))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.divide-teal-700 > :not([hidden]) ~ :not([hidden]) {
  --tw-divide-opacity: 1;
  border-color: rgba(44, 122, 123, var(--tw-divide-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
divide_teal_700 : Css.Style
divide_teal_700 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-opacity" "1"
                , Css.property "border-color" "rgba(44, 122, 123, var(--tw-divide-opacity))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.divide-teal-800 > :not([hidden]) ~ :not([hidden]) {
  --tw-divide-opacity: 1;
  border-color: rgba(40, 94, 97, var(--tw-divide-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
divide_teal_800 : Css.Style
divide_teal_800 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-opacity" "1"
                , Css.property "border-color" "rgba(40, 94, 97, var(--tw-divide-opacity))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.divide-teal-900 > :not([hidden]) ~ :not([hidden]) {
  --tw-divide-opacity: 1;
  border-color: rgba(35, 78, 82, var(--tw-divide-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
divide_teal_900 : Css.Style
divide_teal_900 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-opacity" "1"
                , Css.property "border-color" "rgba(35, 78, 82, var(--tw-divide-opacity))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.divide-transparent > :not([hidden]) ~ :not([hidden]) {
  border-color: transparent
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
divide_transparent : Css.Style
divide_transparent =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "border-color" "transparent"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.divide-white > :not([hidden]) ~ :not([hidden]) {
  --tw-divide-opacity: 1;
  border-color: rgba(255, 255, 255, var(--tw-divide-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
divide_white : Css.Style
divide_white =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-opacity" "1"
                , Css.property "border-color" "rgba(255, 255, 255, var(--tw-divide-opacity))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.divide-x > :not([hidden]) ~ :not([hidden]) {
  --tw-divide-x-reverse: 0;
  border-right-width: calc(1px * var(--tw-divide-x-reverse));
  border-left-width: calc(1px * calc(1 - var(--tw-divide-x-reverse)))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
divide_x : Css.Style
divide_x =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-x-reverse" "0"
                , Css.property "border-right-width" "calc(1px * var(--tw-divide-x-reverse))"
                , Css.property "border-left-width" "calc(1px * calc(1 - var(--tw-divide-x-reverse)))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.divide-x-0 > :not([hidden]) ~ :not([hidden]) {
  --tw-divide-x-reverse: 0;
  border-right-width: calc(0px * var(--tw-divide-x-reverse));
  border-left-width: calc(0px * calc(1 - var(--tw-divide-x-reverse)))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
divide_x_0 : Css.Style
divide_x_0 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-x-reverse" "0"
                , Css.property "border-right-width" "calc(0px * var(--tw-divide-x-reverse))"
                , Css.property "border-left-width" "calc(0px * calc(1 - var(--tw-divide-x-reverse)))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.divide-x-2 > :not([hidden]) ~ :not([hidden]) {
  --tw-divide-x-reverse: 0;
  border-right-width: calc(2px * var(--tw-divide-x-reverse));
  border-left-width: calc(2px * calc(1 - var(--tw-divide-x-reverse)))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
divide_x_2 : Css.Style
divide_x_2 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-x-reverse" "0"
                , Css.property "border-right-width" "calc(2px * var(--tw-divide-x-reverse))"
                , Css.property "border-left-width" "calc(2px * calc(1 - var(--tw-divide-x-reverse)))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.divide-x-4 > :not([hidden]) ~ :not([hidden]) {
  --tw-divide-x-reverse: 0;
  border-right-width: calc(4px * var(--tw-divide-x-reverse));
  border-left-width: calc(4px * calc(1 - var(--tw-divide-x-reverse)))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
divide_x_4 : Css.Style
divide_x_4 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-x-reverse" "0"
                , Css.property "border-right-width" "calc(4px * var(--tw-divide-x-reverse))"
                , Css.property "border-left-width" "calc(4px * calc(1 - var(--tw-divide-x-reverse)))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.divide-x-8 > :not([hidden]) ~ :not([hidden]) {
  --tw-divide-x-reverse: 0;
  border-right-width: calc(8px * var(--tw-divide-x-reverse));
  border-left-width: calc(8px * calc(1 - var(--tw-divide-x-reverse)))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
divide_x_8 : Css.Style
divide_x_8 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-x-reverse" "0"
                , Css.property "border-right-width" "calc(8px * var(--tw-divide-x-reverse))"
                , Css.property "border-left-width" "calc(8px * calc(1 - var(--tw-divide-x-reverse)))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.divide-x-reverse > :not([hidden]) ~ :not([hidden]) {
  --tw-divide-x-reverse: 1
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
divide_x_reverse : Css.Style
divide_x_reverse =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-x-reverse" "1"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.divide-y > :not([hidden]) ~ :not([hidden]) {
  --tw-divide-y-reverse: 0;
  border-top-width: calc(1px * calc(1 - var(--tw-divide-y-reverse)));
  border-bottom-width: calc(1px * var(--tw-divide-y-reverse))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
divide_y : Css.Style
divide_y =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-y-reverse" "0"
                , Css.property "border-top-width" "calc(1px * calc(1 - var(--tw-divide-y-reverse)))"
                , Css.property "border-bottom-width" "calc(1px * var(--tw-divide-y-reverse))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.divide-y-0 > :not([hidden]) ~ :not([hidden]) {
  --tw-divide-y-reverse: 0;
  border-top-width: calc(0px * calc(1 - var(--tw-divide-y-reverse)));
  border-bottom-width: calc(0px * var(--tw-divide-y-reverse))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
divide_y_0 : Css.Style
divide_y_0 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-y-reverse" "0"
                , Css.property "border-top-width" "calc(0px * calc(1 - var(--tw-divide-y-reverse)))"
                , Css.property "border-bottom-width" "calc(0px * var(--tw-divide-y-reverse))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.divide-y-2 > :not([hidden]) ~ :not([hidden]) {
  --tw-divide-y-reverse: 0;
  border-top-width: calc(2px * calc(1 - var(--tw-divide-y-reverse)));
  border-bottom-width: calc(2px * var(--tw-divide-y-reverse))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
divide_y_2 : Css.Style
divide_y_2 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-y-reverse" "0"
                , Css.property "border-top-width" "calc(2px * calc(1 - var(--tw-divide-y-reverse)))"
                , Css.property "border-bottom-width" "calc(2px * var(--tw-divide-y-reverse))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.divide-y-4 > :not([hidden]) ~ :not([hidden]) {
  --tw-divide-y-reverse: 0;
  border-top-width: calc(4px * calc(1 - var(--tw-divide-y-reverse)));
  border-bottom-width: calc(4px * var(--tw-divide-y-reverse))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
divide_y_4 : Css.Style
divide_y_4 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-y-reverse" "0"
                , Css.property "border-top-width" "calc(4px * calc(1 - var(--tw-divide-y-reverse)))"
                , Css.property "border-bottom-width" "calc(4px * var(--tw-divide-y-reverse))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.divide-y-8 > :not([hidden]) ~ :not([hidden]) {
  --tw-divide-y-reverse: 0;
  border-top-width: calc(8px * calc(1 - var(--tw-divide-y-reverse)));
  border-bottom-width: calc(8px * var(--tw-divide-y-reverse))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
divide_y_8 : Css.Style
divide_y_8 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-y-reverse" "0"
                , Css.property "border-top-width" "calc(8px * calc(1 - var(--tw-divide-y-reverse)))"
                , Css.property "border-bottom-width" "calc(8px * var(--tw-divide-y-reverse))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.divide-y-reverse > :not([hidden]) ~ :not([hidden]) {
  --tw-divide-y-reverse: 1
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
divide_y_reverse : Css.Style
divide_y_reverse =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-y-reverse" "1"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.divide-yellow-100 > :not([hidden]) ~ :not([hidden]) {
  --tw-divide-opacity: 1;
  border-color: rgba(255, 255, 240, var(--tw-divide-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
divide_yellow_100 : Css.Style
divide_yellow_100 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-opacity" "1"
                , Css.property "border-color" "rgba(255, 255, 240, var(--tw-divide-opacity))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.divide-yellow-200 > :not([hidden]) ~ :not([hidden]) {
  --tw-divide-opacity: 1;
  border-color: rgba(254, 252, 191, var(--tw-divide-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
divide_yellow_200 : Css.Style
divide_yellow_200 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-opacity" "1"
                , Css.property "border-color" "rgba(254, 252, 191, var(--tw-divide-opacity))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.divide-yellow-300 > :not([hidden]) ~ :not([hidden]) {
  --tw-divide-opacity: 1;
  border-color: rgba(250, 240, 137, var(--tw-divide-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
divide_yellow_300 : Css.Style
divide_yellow_300 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-opacity" "1"
                , Css.property "border-color" "rgba(250, 240, 137, var(--tw-divide-opacity))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.divide-yellow-400 > :not([hidden]) ~ :not([hidden]) {
  --tw-divide-opacity: 1;
  border-color: rgba(246, 224, 94, var(--tw-divide-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
divide_yellow_400 : Css.Style
divide_yellow_400 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-opacity" "1"
                , Css.property "border-color" "rgba(246, 224, 94, var(--tw-divide-opacity))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.divide-yellow-500 > :not([hidden]) ~ :not([hidden]) {
  --tw-divide-opacity: 1;
  border-color: rgba(236, 201, 75, var(--tw-divide-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
divide_yellow_500 : Css.Style
divide_yellow_500 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-opacity" "1"
                , Css.property "border-color" "rgba(236, 201, 75, var(--tw-divide-opacity))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.divide-yellow-600 > :not([hidden]) ~ :not([hidden]) {
  --tw-divide-opacity: 1;
  border-color: rgba(214, 158, 46, var(--tw-divide-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
divide_yellow_600 : Css.Style
divide_yellow_600 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-opacity" "1"
                , Css.property "border-color" "rgba(214, 158, 46, var(--tw-divide-opacity))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.divide-yellow-700 > :not([hidden]) ~ :not([hidden]) {
  --tw-divide-opacity: 1;
  border-color: rgba(183, 121, 31, var(--tw-divide-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
divide_yellow_700 : Css.Style
divide_yellow_700 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-opacity" "1"
                , Css.property "border-color" "rgba(183, 121, 31, var(--tw-divide-opacity))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.divide-yellow-800 > :not([hidden]) ~ :not([hidden]) {
  --tw-divide-opacity: 1;
  border-color: rgba(151, 90, 22, var(--tw-divide-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
divide_yellow_800 : Css.Style
divide_yellow_800 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-opacity" "1"
                , Css.property "border-color" "rgba(151, 90, 22, var(--tw-divide-opacity))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.divide-yellow-900 > :not([hidden]) ~ :not([hidden]) {
  --tw-divide-opacity: 1;
  border-color: rgba(116, 66, 16, var(--tw-divide-opacity))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
divide_yellow_900 : Css.Style
divide_yellow_900 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-opacity" "1"
                , Css.property "border-color" "rgba(116, 66, 16, var(--tw-divide-opacity))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.drop-shadow {
  --tw-drop-shadow: drop-shadow(0 1px 2px rgba(0, 0, 0, 0.1)) drop-shadow(0 1px 1px rgba(0, 0, 0, 0.06))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
drop_shadow : Css.Style
drop_shadow =
    Css.property "--tw-drop-shadow" "drop-shadow(0 1px 2px rgba(0, 0, 0, 0.1)) drop-shadow(0 1px 1px rgba(0, 0, 0, 0.06))"


{-| This class has the effect of following css declaration:

```css
.drop-shadow-2xl {
  --tw-drop-shadow: drop-shadow(0 25px 25px rgba(0, 0, 0, 0.15))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
drop_shadow_2xl : Css.Style
drop_shadow_2xl =
    Css.property "--tw-drop-shadow" "drop-shadow(0 25px 25px rgba(0, 0, 0, 0.15))"


{-| This class has the effect of following css declaration:

```css
.drop-shadow-lg {
  --tw-drop-shadow: drop-shadow(0 10px 8px rgba(0, 0, 0, 0.04)) drop-shadow(0 4px 3px rgba(0, 0, 0, 0.1))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
drop_shadow_lg : Css.Style
drop_shadow_lg =
    Css.property "--tw-drop-shadow" "drop-shadow(0 10px 8px rgba(0, 0, 0, 0.04)) drop-shadow(0 4px 3px rgba(0, 0, 0, 0.1))"


{-| This class has the effect of following css declaration:

```css
.drop-shadow-md {
  --tw-drop-shadow: drop-shadow(0 4px 3px rgba(0, 0, 0, 0.07)) drop-shadow(0 2px 2px rgba(0, 0, 0, 0.06))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
drop_shadow_md : Css.Style
drop_shadow_md =
    Css.property "--tw-drop-shadow" "drop-shadow(0 4px 3px rgba(0, 0, 0, 0.07)) drop-shadow(0 2px 2px rgba(0, 0, 0, 0.06))"


{-| This class has the effect of following css declaration:

```css
.drop-shadow-none {
  --tw-drop-shadow: drop-shadow(0 0 #0000)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
drop_shadow_none : Css.Style
drop_shadow_none =
    Css.property "--tw-drop-shadow" "drop-shadow(0 0 #0000)"


{-| This class has the effect of following css declaration:

```css
.drop-shadow-sm {
  --tw-drop-shadow: drop-shadow(0 1px 1px rgba(0,0,0,0.05))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
drop_shadow_sm : Css.Style
drop_shadow_sm =
    Css.property "--tw-drop-shadow" "drop-shadow(0 1px 1px rgba(0,0,0,0.05))"


{-| This class has the effect of following css declaration:

```css
.drop-shadow-xl {
  --tw-drop-shadow: drop-shadow(0 20px 13px rgba(0, 0, 0, 0.03)) drop-shadow(0 8px 5px rgba(0, 0, 0, 0.08))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
drop_shadow_xl : Css.Style
drop_shadow_xl =
    Css.property "--tw-drop-shadow" "drop-shadow(0 20px 13px rgba(0, 0, 0, 0.03)) drop-shadow(0 8px 5px rgba(0, 0, 0, 0.08))"


{-| This class has the effect of following css declaration:

```css
.duration-100 {
  transition-duration: 100ms
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
duration_100 : Css.Style
duration_100 =
    Css.property "transition-duration" "100ms"


{-| This class has the effect of following css declaration:

```css
.duration-1000 {
  transition-duration: 1000ms
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
duration_1000 : Css.Style
duration_1000 =
    Css.property "transition-duration" "1000ms"


{-| This class has the effect of following css declaration:

```css
.duration-150 {
  transition-duration: 150ms
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
duration_150 : Css.Style
duration_150 =
    Css.property "transition-duration" "150ms"


{-| This class has the effect of following css declaration:

```css
.duration-200 {
  transition-duration: 200ms
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
duration_200 : Css.Style
duration_200 =
    Css.property "transition-duration" "200ms"


{-| This class has the effect of following css declaration:

```css
.duration-300 {
  transition-duration: 300ms
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
duration_300 : Css.Style
duration_300 =
    Css.property "transition-duration" "300ms"


{-| This class has the effect of following css declaration:

```css
.duration-500 {
  transition-duration: 500ms
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
duration_500 : Css.Style
duration_500 =
    Css.property "transition-duration" "500ms"


{-| This class has the effect of following css declaration:

```css
.duration-700 {
  transition-duration: 700ms
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
duration_700 : Css.Style
duration_700 =
    Css.property "transition-duration" "700ms"


{-| This class has the effect of following css declaration:

```css
.duration-75 {
  transition-duration: 75ms
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
duration_75 : Css.Style
duration_75 =
    Css.property "transition-duration" "75ms"


{-| This class has the effect of following css declaration:

```css
.ease-in {
  transition-timing-function: cubic-bezier(0.4, 0, 1, 1)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
ease_in : Css.Style
ease_in =
    Css.property "transition-timing-function" "cubic-bezier(0.4, 0, 1, 1)"


{-| This class has the effect of following css declaration:

```css
.ease-in-out {
  transition-timing-function: cubic-bezier(0.4, 0, 0.2, 1)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
ease_in_out : Css.Style
ease_in_out =
    Css.property "transition-timing-function" "cubic-bezier(0.4, 0, 0.2, 1)"


{-| This class has the effect of following css declaration:

```css
.ease-linear {
  transition-timing-function: linear
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
ease_linear : Css.Style
ease_linear =
    Css.property "transition-timing-function" "linear"


{-| This class has the effect of following css declaration:

```css
.ease-out {
  transition-timing-function: cubic-bezier(0, 0, 0.2, 1)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
ease_out : Css.Style
ease_out =
    Css.property "transition-timing-function" "cubic-bezier(0, 0, 0.2, 1)"


{-| This class has the effect of following css declaration:

```css
.fill-current {
  fill: currentColor
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
fill_current : Css.Style
fill_current =
    Css.property "fill" "currentColor"


{-| This class has the effect of following css declaration:

```css
.filter {
  --tw-blur: var(--tw-empty,/*!*/ /*!*/);
  --tw-brightness: var(--tw-empty,/*!*/ /*!*/);
  --tw-contrast: var(--tw-empty,/*!*/ /*!*/);
  --tw-grayscale: var(--tw-empty,/*!*/ /*!*/);
  --tw-hue-rotate: var(--tw-empty,/*!*/ /*!*/);
  --tw-invert: var(--tw-empty,/*!*/ /*!*/);
  --tw-saturate: var(--tw-empty,/*!*/ /*!*/);
  --tw-sepia: var(--tw-empty,/*!*/ /*!*/);
  --tw-drop-shadow: var(--tw-empty,/*!*/ /*!*/);
  filter: var(--tw-blur) var(--tw-brightness) var(--tw-contrast) var(--tw-grayscale) var(--tw-hue-rotate) var(--tw-invert) var(--tw-saturate) var(--tw-sepia) var(--tw-drop-shadow)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
filter : Css.Style
filter =
    Css.batch
        [ Css.property "--tw-blur" "var(--tw-empty,/*!*/ /*!*/)"
        , Css.property "--tw-brightness" "var(--tw-empty,/*!*/ /*!*/)"
        , Css.property "--tw-contrast" "var(--tw-empty,/*!*/ /*!*/)"
        , Css.property "--tw-grayscale" "var(--tw-empty,/*!*/ /*!*/)"
        , Css.property "--tw-hue-rotate" "var(--tw-empty,/*!*/ /*!*/)"
        , Css.property "--tw-invert" "var(--tw-empty,/*!*/ /*!*/)"
        , Css.property "--tw-saturate" "var(--tw-empty,/*!*/ /*!*/)"
        , Css.property "--tw-sepia" "var(--tw-empty,/*!*/ /*!*/)"
        , Css.property "--tw-drop-shadow" "var(--tw-empty,/*!*/ /*!*/)"
        , Css.property "filter" "var(--tw-blur) var(--tw-brightness) var(--tw-contrast) var(--tw-grayscale) var(--tw-hue-rotate) var(--tw-invert) var(--tw-saturate) var(--tw-sepia) var(--tw-drop-shadow)"
        ]


{-| This class has the effect of following css declaration:

```css
.filter-none {
  filter: none
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
filter_none : Css.Style
filter_none =
    Css.property "filter" "none"


{-| This class has the effect of following css declaration:

```css
.fixed {
  position: fixed
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
fixed : Css.Style
fixed =
    Css.property "position" "fixed"


{-| This class has the effect of following css declaration:

```css
.flex {
  display: flex
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
flex : Css.Style
flex =
    Css.property "display" "flex"


{-| This class has the effect of following css declaration:

```css
.flex-1 {
  flex: 1 1 0%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
flex_1 : Css.Style
flex_1 =
    Css.property "flex" "1 1 0%"


{-| This class has the effect of following css declaration:

```css
.flex-auto {
  flex: 1 1 auto
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
flex_auto : Css.Style
flex_auto =
    Css.property "flex" "1 1 auto"


{-| This class has the effect of following css declaration:

```css
.flex-col {
  flex-direction: column
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
flex_col : Css.Style
flex_col =
    Css.property "flex-direction" "column"


{-| This class has the effect of following css declaration:

```css
.flex-col-reverse {
  flex-direction: column-reverse
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
flex_col_reverse : Css.Style
flex_col_reverse =
    Css.property "flex-direction" "column-reverse"


{-| This class has the effect of following css declaration:

```css
.flex-grow {
  flex-grow: 1
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
flex_grow : Css.Style
flex_grow =
    Css.property "flex-grow" "1"


{-| This class has the effect of following css declaration:

```css
.flex-grow-0 {
  flex-grow: 0
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
flex_grow_0 : Css.Style
flex_grow_0 =
    Css.property "flex-grow" "0"


{-| This class has the effect of following css declaration:

```css
.flex-initial {
  flex: 0 1 auto
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
flex_initial : Css.Style
flex_initial =
    Css.property "flex" "0 1 auto"


{-| This class has the effect of following css declaration:

```css
.flex-none {
  flex: none
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
flex_none : Css.Style
flex_none =
    Css.property "flex" "none"


{-| This class has the effect of following css declaration:

```css
.flex-nowrap {
  flex-wrap: nowrap
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
flex_nowrap : Css.Style
flex_nowrap =
    Css.property "flex-wrap" "nowrap"


{-| This class has the effect of following css declaration:

```css
.flex-row {
  flex-direction: row
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
flex_row : Css.Style
flex_row =
    Css.property "flex-direction" "row"


{-| This class has the effect of following css declaration:

```css
.flex-row-reverse {
  flex-direction: row-reverse
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
flex_row_reverse : Css.Style
flex_row_reverse =
    Css.property "flex-direction" "row-reverse"


{-| This class has the effect of following css declaration:

```css
.flex-shrink {
  flex-shrink: 1
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
flex_shrink : Css.Style
flex_shrink =
    Css.property "flex-shrink" "1"


{-| This class has the effect of following css declaration:

```css
.flex-shrink-0 {
  flex-shrink: 0
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
flex_shrink_0 : Css.Style
flex_shrink_0 =
    Css.property "flex-shrink" "0"


{-| This class has the effect of following css declaration:

```css
.flex-wrap {
  flex-wrap: wrap
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
flex_wrap : Css.Style
flex_wrap =
    Css.property "flex-wrap" "wrap"


{-| This class has the effect of following css declaration:

```css
.flex-wrap-reverse {
  flex-wrap: wrap-reverse
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
flex_wrap_reverse : Css.Style
flex_wrap_reverse =
    Css.property "flex-wrap" "wrap-reverse"


{-| This class has the effect of following css declaration:

```css
.float-left {
  float: left
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
float_left : Css.Style
float_left =
    Css.property "float" "left"


{-| This class has the effect of following css declaration:

```css
.float-none {
  float: none
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
float_none : Css.Style
float_none =
    Css.property "float" "none"


{-| This class has the effect of following css declaration:

```css
.float-right {
  float: right
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
float_right : Css.Style
float_right =
    Css.property "float" "right"


{-| This class has the effect of following css declaration:

```css
.flow-root {
  display: flow-root
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
flow_root : Css.Style
flow_root =
    Css.property "display" "flow-root"


{-| This class has the effect of following css declaration:

```css
.font-black {
  font-weight: 900
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
font_black : Css.Style
font_black =
    Css.property "font-weight" "900"


{-| This class has the effect of following css declaration:

```css
.font-bold {
  font-weight: 700
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
font_bold : Css.Style
font_bold =
    Css.property "font-weight" "700"


{-| This class has the effect of following css declaration:

```css
.font-extrabold {
  font-weight: 800
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
font_extrabold : Css.Style
font_extrabold =
    Css.property "font-weight" "800"


{-| This class has the effect of following css declaration:

```css
.font-extralight {
  font-weight: 200
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
font_extralight : Css.Style
font_extralight =
    Css.property "font-weight" "200"


{-| This class has the effect of following css declaration:

```css
.font-light {
  font-weight: 300
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
font_light : Css.Style
font_light =
    Css.property "font-weight" "300"


{-| This class has the effect of following css declaration:

```css
.font-medium {
  font-weight: 500
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
font_medium : Css.Style
font_medium =
    Css.property "font-weight" "500"


{-| This class has the effect of following css declaration:

```css
.font-mono {
  font-family: Menlo, Monaco, Consolas, "Liberation Mono", "Courier New", monospace
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
font_mono : Css.Style
font_mono =
    Css.property "font-family" "Menlo, Monaco, Consolas, \"Liberation Mono\", \"Courier New\", monospace"


{-| This class has the effect of following css declaration:

```css
.font-normal {
  font-weight: 400
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
font_normal : Css.Style
font_normal =
    Css.property "font-weight" "400"


{-| This class has the effect of following css declaration:

```css
.font-sans {
  font-family: system-ui, -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, "Noto Sans", sans-serif, "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol", "Noto Color Emoji"
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
font_sans : Css.Style
font_sans =
    Css.property "font-family" "system-ui, -apple-system, BlinkMacSystemFont, \"Segoe UI\", Roboto, \"Helvetica Neue\", Arial, \"Noto Sans\", sans-serif, \"Apple Color Emoji\", \"Segoe UI Emoji\", \"Segoe UI Symbol\", \"Noto Color Emoji\""


{-| This class has the effect of following css declaration:

```css
.font-semibold {
  font-weight: 600
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
font_semibold : Css.Style
font_semibold =
    Css.property "font-weight" "600"


{-| This class has the effect of following css declaration:

```css
.font-serif {
  font-family: Georgia, Cambria, "Times New Roman", Times, serif
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
font_serif : Css.Style
font_serif =
    Css.property "font-family" "Georgia, Cambria, \"Times New Roman\", Times, serif"


{-| This class has the effect of following css declaration:

```css
.font-thin {
  font-weight: 100
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
font_thin : Css.Style
font_thin =
    Css.property "font-weight" "100"


{-| This class has the effect of following css declaration:

```css
.font-title {
  font-family: Graduate, system-ui, -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, "Noto Sans", sans-serif, "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol", "Noto Color Emoji"
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
font_title : Css.Style
font_title =
    Css.property "font-family" "Graduate, system-ui, -apple-system, BlinkMacSystemFont, \"Segoe UI\", Roboto, \"Helvetica Neue\", Arial, \"Noto Sans\", sans-serif, \"Apple Color Emoji\", \"Segoe UI Emoji\", \"Segoe UI Symbol\", \"Noto Color Emoji\""


{-| This class has the effect of following css declaration:

```css
.from-black {
  --tw-gradient-from: #000;
  --tw-gradient-stops: var(--tw-gradient-from), var(--tw-gradient-to, rgba(0, 0, 0, 0))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
from_black : Css.Style
from_black =
    Css.batch
        [ Css.property "--tw-gradient-from" "#000"
        , Css.property "--tw-gradient-stops" "var(--tw-gradient-from), var(--tw-gradient-to, rgba(0, 0, 0, 0))"
        ]


{-| This class has the effect of following css declaration:

```css
.from-blue-100 {
  --tw-gradient-from: #ebf8ff;
  --tw-gradient-stops: var(--tw-gradient-from), var(--tw-gradient-to, rgba(235, 248, 255, 0))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
from_blue_100 : Css.Style
from_blue_100 =
    Css.batch
        [ Css.property "--tw-gradient-from" "#ebf8ff"
        , Css.property "--tw-gradient-stops" "var(--tw-gradient-from), var(--tw-gradient-to, rgba(235, 248, 255, 0))"
        ]


{-| This class has the effect of following css declaration:

```css
.from-blue-200 {
  --tw-gradient-from: #bee3f8;
  --tw-gradient-stops: var(--tw-gradient-from), var(--tw-gradient-to, rgba(190, 227, 248, 0))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
from_blue_200 : Css.Style
from_blue_200 =
    Css.batch
        [ Css.property "--tw-gradient-from" "#bee3f8"
        , Css.property "--tw-gradient-stops" "var(--tw-gradient-from), var(--tw-gradient-to, rgba(190, 227, 248, 0))"
        ]


{-| This class has the effect of following css declaration:

```css
.from-blue-300 {
  --tw-gradient-from: #90cdf4;
  --tw-gradient-stops: var(--tw-gradient-from), var(--tw-gradient-to, rgba(144, 205, 244, 0))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
from_blue_300 : Css.Style
from_blue_300 =
    Css.batch
        [ Css.property "--tw-gradient-from" "#90cdf4"
        , Css.property "--tw-gradient-stops" "var(--tw-gradient-from), var(--tw-gradient-to, rgba(144, 205, 244, 0))"
        ]


{-| This class has the effect of following css declaration:

```css
.from-blue-400 {
  --tw-gradient-from: #63b3ed;
  --tw-gradient-stops: var(--tw-gradient-from), var(--tw-gradient-to, rgba(99, 179, 237, 0))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
from_blue_400 : Css.Style
from_blue_400 =
    Css.batch
        [ Css.property "--tw-gradient-from" "#63b3ed"
        , Css.property "--tw-gradient-stops" "var(--tw-gradient-from), var(--tw-gradient-to, rgba(99, 179, 237, 0))"
        ]


{-| This class has the effect of following css declaration:

```css
.from-blue-500 {
  --tw-gradient-from: #4299e1;
  --tw-gradient-stops: var(--tw-gradient-from), var(--tw-gradient-to, rgba(66, 153, 225, 0))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
from_blue_500 : Css.Style
from_blue_500 =
    Css.batch
        [ Css.property "--tw-gradient-from" "#4299e1"
        , Css.property "--tw-gradient-stops" "var(--tw-gradient-from), var(--tw-gradient-to, rgba(66, 153, 225, 0))"
        ]


{-| This class has the effect of following css declaration:

```css
.from-blue-600 {
  --tw-gradient-from: #3182ce;
  --tw-gradient-stops: var(--tw-gradient-from), var(--tw-gradient-to, rgba(49, 130, 206, 0))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
from_blue_600 : Css.Style
from_blue_600 =
    Css.batch
        [ Css.property "--tw-gradient-from" "#3182ce"
        , Css.property "--tw-gradient-stops" "var(--tw-gradient-from), var(--tw-gradient-to, rgba(49, 130, 206, 0))"
        ]


{-| This class has the effect of following css declaration:

```css
.from-blue-700 {
  --tw-gradient-from: #2b6cb0;
  --tw-gradient-stops: var(--tw-gradient-from), var(--tw-gradient-to, rgba(43, 108, 176, 0))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
from_blue_700 : Css.Style
from_blue_700 =
    Css.batch
        [ Css.property "--tw-gradient-from" "#2b6cb0"
        , Css.property "--tw-gradient-stops" "var(--tw-gradient-from), var(--tw-gradient-to, rgba(43, 108, 176, 0))"
        ]


{-| This class has the effect of following css declaration:

```css
.from-blue-800 {
  --tw-gradient-from: #2c5282;
  --tw-gradient-stops: var(--tw-gradient-from), var(--tw-gradient-to, rgba(44, 82, 130, 0))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
from_blue_800 : Css.Style
from_blue_800 =
    Css.batch
        [ Css.property "--tw-gradient-from" "#2c5282"
        , Css.property "--tw-gradient-stops" "var(--tw-gradient-from), var(--tw-gradient-to, rgba(44, 82, 130, 0))"
        ]


{-| This class has the effect of following css declaration:

```css
.from-blue-900 {
  --tw-gradient-from: #2a4365;
  --tw-gradient-stops: var(--tw-gradient-from), var(--tw-gradient-to, rgba(42, 67, 101, 0))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
from_blue_900 : Css.Style
from_blue_900 =
    Css.batch
        [ Css.property "--tw-gradient-from" "#2a4365"
        , Css.property "--tw-gradient-stops" "var(--tw-gradient-from), var(--tw-gradient-to, rgba(42, 67, 101, 0))"
        ]


{-| This class has the effect of following css declaration:

```css
.from-current {
  --tw-gradient-from: currentColor;
  --tw-gradient-stops: var(--tw-gradient-from), var(--tw-gradient-to, rgba(255, 255, 255, 0))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
from_current : Css.Style
from_current =
    Css.batch
        [ Css.property "--tw-gradient-from" "currentColor"
        , Css.property "--tw-gradient-stops" "var(--tw-gradient-from), var(--tw-gradient-to, rgba(255, 255, 255, 0))"
        ]


{-| This class has the effect of following css declaration:

```css
.from-gray-100 {
  --tw-gradient-from: #f7fafc;
  --tw-gradient-stops: var(--tw-gradient-from), var(--tw-gradient-to, rgba(247, 250, 252, 0))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
from_gray_100 : Css.Style
from_gray_100 =
    Css.batch
        [ Css.property "--tw-gradient-from" "#f7fafc"
        , Css.property "--tw-gradient-stops" "var(--tw-gradient-from), var(--tw-gradient-to, rgba(247, 250, 252, 0))"
        ]


{-| This class has the effect of following css declaration:

```css
.from-gray-200 {
  --tw-gradient-from: #edf2f7;
  --tw-gradient-stops: var(--tw-gradient-from), var(--tw-gradient-to, rgba(237, 242, 247, 0))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
from_gray_200 : Css.Style
from_gray_200 =
    Css.batch
        [ Css.property "--tw-gradient-from" "#edf2f7"
        , Css.property "--tw-gradient-stops" "var(--tw-gradient-from), var(--tw-gradient-to, rgba(237, 242, 247, 0))"
        ]


{-| This class has the effect of following css declaration:

```css
.from-gray-300 {
  --tw-gradient-from: #e2e8f0;
  --tw-gradient-stops: var(--tw-gradient-from), var(--tw-gradient-to, rgba(226, 232, 240, 0))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
from_gray_300 : Css.Style
from_gray_300 =
    Css.batch
        [ Css.property "--tw-gradient-from" "#e2e8f0"
        , Css.property "--tw-gradient-stops" "var(--tw-gradient-from), var(--tw-gradient-to, rgba(226, 232, 240, 0))"
        ]


{-| This class has the effect of following css declaration:

```css
.from-gray-400 {
  --tw-gradient-from: #cbd5e0;
  --tw-gradient-stops: var(--tw-gradient-from), var(--tw-gradient-to, rgba(203, 213, 224, 0))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
from_gray_400 : Css.Style
from_gray_400 =
    Css.batch
        [ Css.property "--tw-gradient-from" "#cbd5e0"
        , Css.property "--tw-gradient-stops" "var(--tw-gradient-from), var(--tw-gradient-to, rgba(203, 213, 224, 0))"
        ]


{-| This class has the effect of following css declaration:

```css
.from-gray-500 {
  --tw-gradient-from: #a0aec0;
  --tw-gradient-stops: var(--tw-gradient-from), var(--tw-gradient-to, rgba(160, 174, 192, 0))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
from_gray_500 : Css.Style
from_gray_500 =
    Css.batch
        [ Css.property "--tw-gradient-from" "#a0aec0"
        , Css.property "--tw-gradient-stops" "var(--tw-gradient-from), var(--tw-gradient-to, rgba(160, 174, 192, 0))"
        ]


{-| This class has the effect of following css declaration:

```css
.from-gray-600 {
  --tw-gradient-from: #718096;
  --tw-gradient-stops: var(--tw-gradient-from), var(--tw-gradient-to, rgba(113, 128, 150, 0))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
from_gray_600 : Css.Style
from_gray_600 =
    Css.batch
        [ Css.property "--tw-gradient-from" "#718096"
        , Css.property "--tw-gradient-stops" "var(--tw-gradient-from), var(--tw-gradient-to, rgba(113, 128, 150, 0))"
        ]


{-| This class has the effect of following css declaration:

```css
.from-gray-700 {
  --tw-gradient-from: #4a5568;
  --tw-gradient-stops: var(--tw-gradient-from), var(--tw-gradient-to, rgba(74, 85, 104, 0))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
from_gray_700 : Css.Style
from_gray_700 =
    Css.batch
        [ Css.property "--tw-gradient-from" "#4a5568"
        , Css.property "--tw-gradient-stops" "var(--tw-gradient-from), var(--tw-gradient-to, rgba(74, 85, 104, 0))"
        ]


{-| This class has the effect of following css declaration:

```css
.from-gray-800 {
  --tw-gradient-from: #2d3748;
  --tw-gradient-stops: var(--tw-gradient-from), var(--tw-gradient-to, rgba(45, 55, 72, 0))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
from_gray_800 : Css.Style
from_gray_800 =
    Css.batch
        [ Css.property "--tw-gradient-from" "#2d3748"
        , Css.property "--tw-gradient-stops" "var(--tw-gradient-from), var(--tw-gradient-to, rgba(45, 55, 72, 0))"
        ]


{-| This class has the effect of following css declaration:

```css
.from-gray-900 {
  --tw-gradient-from: #1a202c;
  --tw-gradient-stops: var(--tw-gradient-from), var(--tw-gradient-to, rgba(26, 32, 44, 0))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
from_gray_900 : Css.Style
from_gray_900 =
    Css.batch
        [ Css.property "--tw-gradient-from" "#1a202c"
        , Css.property "--tw-gradient-stops" "var(--tw-gradient-from), var(--tw-gradient-to, rgba(26, 32, 44, 0))"
        ]


{-| This class has the effect of following css declaration:

```css
.from-green-100 {
  --tw-gradient-from: #f0fff4;
  --tw-gradient-stops: var(--tw-gradient-from), var(--tw-gradient-to, rgba(240, 255, 244, 0))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
from_green_100 : Css.Style
from_green_100 =
    Css.batch
        [ Css.property "--tw-gradient-from" "#f0fff4"
        , Css.property "--tw-gradient-stops" "var(--tw-gradient-from), var(--tw-gradient-to, rgba(240, 255, 244, 0))"
        ]


{-| This class has the effect of following css declaration:

```css
.from-green-200 {
  --tw-gradient-from: #c6f6d5;
  --tw-gradient-stops: var(--tw-gradient-from), var(--tw-gradient-to, rgba(198, 246, 213, 0))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
from_green_200 : Css.Style
from_green_200 =
    Css.batch
        [ Css.property "--tw-gradient-from" "#c6f6d5"
        , Css.property "--tw-gradient-stops" "var(--tw-gradient-from), var(--tw-gradient-to, rgba(198, 246, 213, 0))"
        ]


{-| This class has the effect of following css declaration:

```css
.from-green-300 {
  --tw-gradient-from: #9ae6b4;
  --tw-gradient-stops: var(--tw-gradient-from), var(--tw-gradient-to, rgba(154, 230, 180, 0))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
from_green_300 : Css.Style
from_green_300 =
    Css.batch
        [ Css.property "--tw-gradient-from" "#9ae6b4"
        , Css.property "--tw-gradient-stops" "var(--tw-gradient-from), var(--tw-gradient-to, rgba(154, 230, 180, 0))"
        ]


{-| This class has the effect of following css declaration:

```css
.from-green-400 {
  --tw-gradient-from: #68d391;
  --tw-gradient-stops: var(--tw-gradient-from), var(--tw-gradient-to, rgba(104, 211, 145, 0))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
from_green_400 : Css.Style
from_green_400 =
    Css.batch
        [ Css.property "--tw-gradient-from" "#68d391"
        , Css.property "--tw-gradient-stops" "var(--tw-gradient-from), var(--tw-gradient-to, rgba(104, 211, 145, 0))"
        ]


{-| This class has the effect of following css declaration:

```css
.from-green-500 {
  --tw-gradient-from: #48bb78;
  --tw-gradient-stops: var(--tw-gradient-from), var(--tw-gradient-to, rgba(72, 187, 120, 0))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
from_green_500 : Css.Style
from_green_500 =
    Css.batch
        [ Css.property "--tw-gradient-from" "#48bb78"
        , Css.property "--tw-gradient-stops" "var(--tw-gradient-from), var(--tw-gradient-to, rgba(72, 187, 120, 0))"
        ]


{-| This class has the effect of following css declaration:

```css
.from-green-600 {
  --tw-gradient-from: #38a169;
  --tw-gradient-stops: var(--tw-gradient-from), var(--tw-gradient-to, rgba(56, 161, 105, 0))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
from_green_600 : Css.Style
from_green_600 =
    Css.batch
        [ Css.property "--tw-gradient-from" "#38a169"
        , Css.property "--tw-gradient-stops" "var(--tw-gradient-from), var(--tw-gradient-to, rgba(56, 161, 105, 0))"
        ]


{-| This class has the effect of following css declaration:

```css
.from-green-700 {
  --tw-gradient-from: #2f855a;
  --tw-gradient-stops: var(--tw-gradient-from), var(--tw-gradient-to, rgba(47, 133, 90, 0))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
from_green_700 : Css.Style
from_green_700 =
    Css.batch
        [ Css.property "--tw-gradient-from" "#2f855a"
        , Css.property "--tw-gradient-stops" "var(--tw-gradient-from), var(--tw-gradient-to, rgba(47, 133, 90, 0))"
        ]


{-| This class has the effect of following css declaration:

```css
.from-green-800 {
  --tw-gradient-from: #276749;
  --tw-gradient-stops: var(--tw-gradient-from), var(--tw-gradient-to, rgba(39, 103, 73, 0))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
from_green_800 : Css.Style
from_green_800 =
    Css.batch
        [ Css.property "--tw-gradient-from" "#276749"
        , Css.property "--tw-gradient-stops" "var(--tw-gradient-from), var(--tw-gradient-to, rgba(39, 103, 73, 0))"
        ]


{-| This class has the effect of following css declaration:

```css
.from-green-900 {
  --tw-gradient-from: #22543d;
  --tw-gradient-stops: var(--tw-gradient-from), var(--tw-gradient-to, rgba(34, 84, 61, 0))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
from_green_900 : Css.Style
from_green_900 =
    Css.batch
        [ Css.property "--tw-gradient-from" "#22543d"
        , Css.property "--tw-gradient-stops" "var(--tw-gradient-from), var(--tw-gradient-to, rgba(34, 84, 61, 0))"
        ]


{-| This class has the effect of following css declaration:

```css
.from-indigo-100 {
  --tw-gradient-from: #ebf4ff;
  --tw-gradient-stops: var(--tw-gradient-from), var(--tw-gradient-to, rgba(235, 244, 255, 0))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
from_indigo_100 : Css.Style
from_indigo_100 =
    Css.batch
        [ Css.property "--tw-gradient-from" "#ebf4ff"
        , Css.property "--tw-gradient-stops" "var(--tw-gradient-from), var(--tw-gradient-to, rgba(235, 244, 255, 0))"
        ]


{-| This class has the effect of following css declaration:

```css
.from-indigo-200 {
  --tw-gradient-from: #c3dafe;
  --tw-gradient-stops: var(--tw-gradient-from), var(--tw-gradient-to, rgba(195, 218, 254, 0))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
from_indigo_200 : Css.Style
from_indigo_200 =
    Css.batch
        [ Css.property "--tw-gradient-from" "#c3dafe"
        , Css.property "--tw-gradient-stops" "var(--tw-gradient-from), var(--tw-gradient-to, rgba(195, 218, 254, 0))"
        ]


{-| This class has the effect of following css declaration:

```css
.from-indigo-300 {
  --tw-gradient-from: #a3bffa;
  --tw-gradient-stops: var(--tw-gradient-from), var(--tw-gradient-to, rgba(163, 191, 250, 0))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
from_indigo_300 : Css.Style
from_indigo_300 =
    Css.batch
        [ Css.property "--tw-gradient-from" "#a3bffa"
        , Css.property "--tw-gradient-stops" "var(--tw-gradient-from), var(--tw-gradient-to, rgba(163, 191, 250, 0))"
        ]


{-| This class has the effect of following css declaration:

```css
.from-indigo-400 {
  --tw-gradient-from: #7f9cf5;
  --tw-gradient-stops: var(--tw-gradient-from), var(--tw-gradient-to, rgba(127, 156, 245, 0))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
from_indigo_400 : Css.Style
from_indigo_400 =
    Css.batch
        [ Css.property "--tw-gradient-from" "#7f9cf5"
        , Css.property "--tw-gradient-stops" "var(--tw-gradient-from), var(--tw-gradient-to, rgba(127, 156, 245, 0))"
        ]


{-| This class has the effect of following css declaration:

```css
.from-indigo-500 {
  --tw-gradient-from: #667eea;
  --tw-gradient-stops: var(--tw-gradient-from), var(--tw-gradient-to, rgba(102, 126, 234, 0))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
from_indigo_500 : Css.Style
from_indigo_500 =
    Css.batch
        [ Css.property "--tw-gradient-from" "#667eea"
        , Css.property "--tw-gradient-stops" "var(--tw-gradient-from), var(--tw-gradient-to, rgba(102, 126, 234, 0))"
        ]


{-| This class has the effect of following css declaration:

```css
.from-indigo-600 {
  --tw-gradient-from: #5a67d8;
  --tw-gradient-stops: var(--tw-gradient-from), var(--tw-gradient-to, rgba(90, 103, 216, 0))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
from_indigo_600 : Css.Style
from_indigo_600 =
    Css.batch
        [ Css.property "--tw-gradient-from" "#5a67d8"
        , Css.property "--tw-gradient-stops" "var(--tw-gradient-from), var(--tw-gradient-to, rgba(90, 103, 216, 0))"
        ]


{-| This class has the effect of following css declaration:

```css
.from-indigo-700 {
  --tw-gradient-from: #4c51bf;
  --tw-gradient-stops: var(--tw-gradient-from), var(--tw-gradient-to, rgba(76, 81, 191, 0))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
from_indigo_700 : Css.Style
from_indigo_700 =
    Css.batch
        [ Css.property "--tw-gradient-from" "#4c51bf"
        , Css.property "--tw-gradient-stops" "var(--tw-gradient-from), var(--tw-gradient-to, rgba(76, 81, 191, 0))"
        ]


{-| This class has the effect of following css declaration:

```css
.from-indigo-800 {
  --tw-gradient-from: #434190;
  --tw-gradient-stops: var(--tw-gradient-from), var(--tw-gradient-to, rgba(67, 65, 144, 0))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
from_indigo_800 : Css.Style
from_indigo_800 =
    Css.batch
        [ Css.property "--tw-gradient-from" "#434190"
        , Css.property "--tw-gradient-stops" "var(--tw-gradient-from), var(--tw-gradient-to, rgba(67, 65, 144, 0))"
        ]


{-| This class has the effect of following css declaration:

```css
.from-indigo-900 {
  --tw-gradient-from: #3c366b;
  --tw-gradient-stops: var(--tw-gradient-from), var(--tw-gradient-to, rgba(60, 54, 107, 0))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
from_indigo_900 : Css.Style
from_indigo_900 =
    Css.batch
        [ Css.property "--tw-gradient-from" "#3c366b"
        , Css.property "--tw-gradient-stops" "var(--tw-gradient-from), var(--tw-gradient-to, rgba(60, 54, 107, 0))"
        ]


{-| This class has the effect of following css declaration:

```css
.from-orange-100 {
  --tw-gradient-from: #fffaf0;
  --tw-gradient-stops: var(--tw-gradient-from), var(--tw-gradient-to, rgba(255, 250, 240, 0))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
from_orange_100 : Css.Style
from_orange_100 =
    Css.batch
        [ Css.property "--tw-gradient-from" "#fffaf0"
        , Css.property "--tw-gradient-stops" "var(--tw-gradient-from), var(--tw-gradient-to, rgba(255, 250, 240, 0))"
        ]


{-| This class has the effect of following css declaration:

```css
.from-orange-200 {
  --tw-gradient-from: #feebc8;
  --tw-gradient-stops: var(--tw-gradient-from), var(--tw-gradient-to, rgba(254, 235, 200, 0))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
from_orange_200 : Css.Style
from_orange_200 =
    Css.batch
        [ Css.property "--tw-gradient-from" "#feebc8"
        , Css.property "--tw-gradient-stops" "var(--tw-gradient-from), var(--tw-gradient-to, rgba(254, 235, 200, 0))"
        ]


{-| This class has the effect of following css declaration:

```css
.from-orange-300 {
  --tw-gradient-from: #fbd38d;
  --tw-gradient-stops: var(--tw-gradient-from), var(--tw-gradient-to, rgba(251, 211, 141, 0))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
from_orange_300 : Css.Style
from_orange_300 =
    Css.batch
        [ Css.property "--tw-gradient-from" "#fbd38d"
        , Css.property "--tw-gradient-stops" "var(--tw-gradient-from), var(--tw-gradient-to, rgba(251, 211, 141, 0))"
        ]


{-| This class has the effect of following css declaration:

```css
.from-orange-400 {
  --tw-gradient-from: #f6ad55;
  --tw-gradient-stops: var(--tw-gradient-from), var(--tw-gradient-to, rgba(246, 173, 85, 0))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
from_orange_400 : Css.Style
from_orange_400 =
    Css.batch
        [ Css.property "--tw-gradient-from" "#f6ad55"
        , Css.property "--tw-gradient-stops" "var(--tw-gradient-from), var(--tw-gradient-to, rgba(246, 173, 85, 0))"
        ]


{-| This class has the effect of following css declaration:

```css
.from-orange-500 {
  --tw-gradient-from: #ed8936;
  --tw-gradient-stops: var(--tw-gradient-from), var(--tw-gradient-to, rgba(237, 137, 54, 0))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
from_orange_500 : Css.Style
from_orange_500 =
    Css.batch
        [ Css.property "--tw-gradient-from" "#ed8936"
        , Css.property "--tw-gradient-stops" "var(--tw-gradient-from), var(--tw-gradient-to, rgba(237, 137, 54, 0))"
        ]


{-| This class has the effect of following css declaration:

```css
.from-orange-600 {
  --tw-gradient-from: #dd6b20;
  --tw-gradient-stops: var(--tw-gradient-from), var(--tw-gradient-to, rgba(221, 107, 32, 0))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
from_orange_600 : Css.Style
from_orange_600 =
    Css.batch
        [ Css.property "--tw-gradient-from" "#dd6b20"
        , Css.property "--tw-gradient-stops" "var(--tw-gradient-from), var(--tw-gradient-to, rgba(221, 107, 32, 0))"
        ]


{-| This class has the effect of following css declaration:

```css
.from-orange-700 {
  --tw-gradient-from: #c05621;
  --tw-gradient-stops: var(--tw-gradient-from), var(--tw-gradient-to, rgba(192, 86, 33, 0))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
from_orange_700 : Css.Style
from_orange_700 =
    Css.batch
        [ Css.property "--tw-gradient-from" "#c05621"
        , Css.property "--tw-gradient-stops" "var(--tw-gradient-from), var(--tw-gradient-to, rgba(192, 86, 33, 0))"
        ]


{-| This class has the effect of following css declaration:

```css
.from-orange-800 {
  --tw-gradient-from: #9c4221;
  --tw-gradient-stops: var(--tw-gradient-from), var(--tw-gradient-to, rgba(156, 66, 33, 0))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
from_orange_800 : Css.Style
from_orange_800 =
    Css.batch
        [ Css.property "--tw-gradient-from" "#9c4221"
        , Css.property "--tw-gradient-stops" "var(--tw-gradient-from), var(--tw-gradient-to, rgba(156, 66, 33, 0))"
        ]


{-| This class has the effect of following css declaration:

```css
.from-orange-900 {
  --tw-gradient-from: #7b341e;
  --tw-gradient-stops: var(--tw-gradient-from), var(--tw-gradient-to, rgba(123, 52, 30, 0))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
from_orange_900 : Css.Style
from_orange_900 =
    Css.batch
        [ Css.property "--tw-gradient-from" "#7b341e"
        , Css.property "--tw-gradient-stops" "var(--tw-gradient-from), var(--tw-gradient-to, rgba(123, 52, 30, 0))"
        ]


{-| This class has the effect of following css declaration:

```css
.from-pink-100 {
  --tw-gradient-from: #fff5f7;
  --tw-gradient-stops: var(--tw-gradient-from), var(--tw-gradient-to, rgba(255, 245, 247, 0))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
from_pink_100 : Css.Style
from_pink_100 =
    Css.batch
        [ Css.property "--tw-gradient-from" "#fff5f7"
        , Css.property "--tw-gradient-stops" "var(--tw-gradient-from), var(--tw-gradient-to, rgba(255, 245, 247, 0))"
        ]


{-| This class has the effect of following css declaration:

```css
.from-pink-200 {
  --tw-gradient-from: #fed7e2;
  --tw-gradient-stops: var(--tw-gradient-from), var(--tw-gradient-to, rgba(254, 215, 226, 0))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
from_pink_200 : Css.Style
from_pink_200 =
    Css.batch
        [ Css.property "--tw-gradient-from" "#fed7e2"
        , Css.property "--tw-gradient-stops" "var(--tw-gradient-from), var(--tw-gradient-to, rgba(254, 215, 226, 0))"
        ]


{-| This class has the effect of following css declaration:

```css
.from-pink-300 {
  --tw-gradient-from: #fbb6ce;
  --tw-gradient-stops: var(--tw-gradient-from), var(--tw-gradient-to, rgba(251, 182, 206, 0))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
from_pink_300 : Css.Style
from_pink_300 =
    Css.batch
        [ Css.property "--tw-gradient-from" "#fbb6ce"
        , Css.property "--tw-gradient-stops" "var(--tw-gradient-from), var(--tw-gradient-to, rgba(251, 182, 206, 0))"
        ]


{-| This class has the effect of following css declaration:

```css
.from-pink-400 {
  --tw-gradient-from: #f687b3;
  --tw-gradient-stops: var(--tw-gradient-from), var(--tw-gradient-to, rgba(246, 135, 179, 0))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
from_pink_400 : Css.Style
from_pink_400 =
    Css.batch
        [ Css.property "--tw-gradient-from" "#f687b3"
        , Css.property "--tw-gradient-stops" "var(--tw-gradient-from), var(--tw-gradient-to, rgba(246, 135, 179, 0))"
        ]


{-| This class has the effect of following css declaration:

```css
.from-pink-500 {
  --tw-gradient-from: #ed64a6;
  --tw-gradient-stops: var(--tw-gradient-from), var(--tw-gradient-to, rgba(237, 100, 166, 0))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
from_pink_500 : Css.Style
from_pink_500 =
    Css.batch
        [ Css.property "--tw-gradient-from" "#ed64a6"
        , Css.property "--tw-gradient-stops" "var(--tw-gradient-from), var(--tw-gradient-to, rgba(237, 100, 166, 0))"
        ]


{-| This class has the effect of following css declaration:

```css
.from-pink-600 {
  --tw-gradient-from: #d53f8c;
  --tw-gradient-stops: var(--tw-gradient-from), var(--tw-gradient-to, rgba(213, 63, 140, 0))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
from_pink_600 : Css.Style
from_pink_600 =
    Css.batch
        [ Css.property "--tw-gradient-from" "#d53f8c"
        , Css.property "--tw-gradient-stops" "var(--tw-gradient-from), var(--tw-gradient-to, rgba(213, 63, 140, 0))"
        ]


{-| This class has the effect of following css declaration:

```css
.from-pink-700 {
  --tw-gradient-from: #b83280;
  --tw-gradient-stops: var(--tw-gradient-from), var(--tw-gradient-to, rgba(184, 50, 128, 0))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
from_pink_700 : Css.Style
from_pink_700 =
    Css.batch
        [ Css.property "--tw-gradient-from" "#b83280"
        , Css.property "--tw-gradient-stops" "var(--tw-gradient-from), var(--tw-gradient-to, rgba(184, 50, 128, 0))"
        ]


{-| This class has the effect of following css declaration:

```css
.from-pink-800 {
  --tw-gradient-from: #97266d;
  --tw-gradient-stops: var(--tw-gradient-from), var(--tw-gradient-to, rgba(151, 38, 109, 0))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
from_pink_800 : Css.Style
from_pink_800 =
    Css.batch
        [ Css.property "--tw-gradient-from" "#97266d"
        , Css.property "--tw-gradient-stops" "var(--tw-gradient-from), var(--tw-gradient-to, rgba(151, 38, 109, 0))"
        ]


{-| This class has the effect of following css declaration:

```css
.from-pink-900 {
  --tw-gradient-from: #702459;
  --tw-gradient-stops: var(--tw-gradient-from), var(--tw-gradient-to, rgba(112, 36, 89, 0))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
from_pink_900 : Css.Style
from_pink_900 =
    Css.batch
        [ Css.property "--tw-gradient-from" "#702459"
        , Css.property "--tw-gradient-stops" "var(--tw-gradient-from), var(--tw-gradient-to, rgba(112, 36, 89, 0))"
        ]


{-| This class has the effect of following css declaration:

```css
.from-purple-100 {
  --tw-gradient-from: #faf5ff;
  --tw-gradient-stops: var(--tw-gradient-from), var(--tw-gradient-to, rgba(250, 245, 255, 0))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
from_purple_100 : Css.Style
from_purple_100 =
    Css.batch
        [ Css.property "--tw-gradient-from" "#faf5ff"
        , Css.property "--tw-gradient-stops" "var(--tw-gradient-from), var(--tw-gradient-to, rgba(250, 245, 255, 0))"
        ]


{-| This class has the effect of following css declaration:

```css
.from-purple-200 {
  --tw-gradient-from: #e9d8fd;
  --tw-gradient-stops: var(--tw-gradient-from), var(--tw-gradient-to, rgba(233, 216, 253, 0))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
from_purple_200 : Css.Style
from_purple_200 =
    Css.batch
        [ Css.property "--tw-gradient-from" "#e9d8fd"
        , Css.property "--tw-gradient-stops" "var(--tw-gradient-from), var(--tw-gradient-to, rgba(233, 216, 253, 0))"
        ]


{-| This class has the effect of following css declaration:

```css
.from-purple-300 {
  --tw-gradient-from: #d6bcfa;
  --tw-gradient-stops: var(--tw-gradient-from), var(--tw-gradient-to, rgba(214, 188, 250, 0))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
from_purple_300 : Css.Style
from_purple_300 =
    Css.batch
        [ Css.property "--tw-gradient-from" "#d6bcfa"
        , Css.property "--tw-gradient-stops" "var(--tw-gradient-from), var(--tw-gradient-to, rgba(214, 188, 250, 0))"
        ]


{-| This class has the effect of following css declaration:

```css
.from-purple-400 {
  --tw-gradient-from: #b794f4;
  --tw-gradient-stops: var(--tw-gradient-from), var(--tw-gradient-to, rgba(183, 148, 244, 0))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
from_purple_400 : Css.Style
from_purple_400 =
    Css.batch
        [ Css.property "--tw-gradient-from" "#b794f4"
        , Css.property "--tw-gradient-stops" "var(--tw-gradient-from), var(--tw-gradient-to, rgba(183, 148, 244, 0))"
        ]


{-| This class has the effect of following css declaration:

```css
.from-purple-500 {
  --tw-gradient-from: #9f7aea;
  --tw-gradient-stops: var(--tw-gradient-from), var(--tw-gradient-to, rgba(159, 122, 234, 0))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
from_purple_500 : Css.Style
from_purple_500 =
    Css.batch
        [ Css.property "--tw-gradient-from" "#9f7aea"
        , Css.property "--tw-gradient-stops" "var(--tw-gradient-from), var(--tw-gradient-to, rgba(159, 122, 234, 0))"
        ]


{-| This class has the effect of following css declaration:

```css
.from-purple-600 {
  --tw-gradient-from: #805ad5;
  --tw-gradient-stops: var(--tw-gradient-from), var(--tw-gradient-to, rgba(128, 90, 213, 0))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
from_purple_600 : Css.Style
from_purple_600 =
    Css.batch
        [ Css.property "--tw-gradient-from" "#805ad5"
        , Css.property "--tw-gradient-stops" "var(--tw-gradient-from), var(--tw-gradient-to, rgba(128, 90, 213, 0))"
        ]


{-| This class has the effect of following css declaration:

```css
.from-purple-700 {
  --tw-gradient-from: #6b46c1;
  --tw-gradient-stops: var(--tw-gradient-from), var(--tw-gradient-to, rgba(107, 70, 193, 0))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
from_purple_700 : Css.Style
from_purple_700 =
    Css.batch
        [ Css.property "--tw-gradient-from" "#6b46c1"
        , Css.property "--tw-gradient-stops" "var(--tw-gradient-from), var(--tw-gradient-to, rgba(107, 70, 193, 0))"
        ]


{-| This class has the effect of following css declaration:

```css
.from-purple-800 {
  --tw-gradient-from: #553c9a;
  --tw-gradient-stops: var(--tw-gradient-from), var(--tw-gradient-to, rgba(85, 60, 154, 0))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
from_purple_800 : Css.Style
from_purple_800 =
    Css.batch
        [ Css.property "--tw-gradient-from" "#553c9a"
        , Css.property "--tw-gradient-stops" "var(--tw-gradient-from), var(--tw-gradient-to, rgba(85, 60, 154, 0))"
        ]


{-| This class has the effect of following css declaration:

```css
.from-purple-900 {
  --tw-gradient-from: #44337a;
  --tw-gradient-stops: var(--tw-gradient-from), var(--tw-gradient-to, rgba(68, 51, 122, 0))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
from_purple_900 : Css.Style
from_purple_900 =
    Css.batch
        [ Css.property "--tw-gradient-from" "#44337a"
        , Css.property "--tw-gradient-stops" "var(--tw-gradient-from), var(--tw-gradient-to, rgba(68, 51, 122, 0))"
        ]


{-| This class has the effect of following css declaration:

```css
.from-red-100 {
  --tw-gradient-from: #fff5f5;
  --tw-gradient-stops: var(--tw-gradient-from), var(--tw-gradient-to, rgba(255, 245, 245, 0))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
from_red_100 : Css.Style
from_red_100 =
    Css.batch
        [ Css.property "--tw-gradient-from" "#fff5f5"
        , Css.property "--tw-gradient-stops" "var(--tw-gradient-from), var(--tw-gradient-to, rgba(255, 245, 245, 0))"
        ]


{-| This class has the effect of following css declaration:

```css
.from-red-200 {
  --tw-gradient-from: #fed7d7;
  --tw-gradient-stops: var(--tw-gradient-from), var(--tw-gradient-to, rgba(254, 215, 215, 0))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
from_red_200 : Css.Style
from_red_200 =
    Css.batch
        [ Css.property "--tw-gradient-from" "#fed7d7"
        , Css.property "--tw-gradient-stops" "var(--tw-gradient-from), var(--tw-gradient-to, rgba(254, 215, 215, 0))"
        ]


{-| This class has the effect of following css declaration:

```css
.from-red-300 {
  --tw-gradient-from: #feb2b2;
  --tw-gradient-stops: var(--tw-gradient-from), var(--tw-gradient-to, rgba(254, 178, 178, 0))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
from_red_300 : Css.Style
from_red_300 =
    Css.batch
        [ Css.property "--tw-gradient-from" "#feb2b2"
        , Css.property "--tw-gradient-stops" "var(--tw-gradient-from), var(--tw-gradient-to, rgba(254, 178, 178, 0))"
        ]


{-| This class has the effect of following css declaration:

```css
.from-red-400 {
  --tw-gradient-from: #fc8181;
  --tw-gradient-stops: var(--tw-gradient-from), var(--tw-gradient-to, rgba(252, 129, 129, 0))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
from_red_400 : Css.Style
from_red_400 =
    Css.batch
        [ Css.property "--tw-gradient-from" "#fc8181"
        , Css.property "--tw-gradient-stops" "var(--tw-gradient-from), var(--tw-gradient-to, rgba(252, 129, 129, 0))"
        ]


{-| This class has the effect of following css declaration:

```css
.from-red-500 {
  --tw-gradient-from: #f56565;
  --tw-gradient-stops: var(--tw-gradient-from), var(--tw-gradient-to, rgba(245, 101, 101, 0))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
from_red_500 : Css.Style
from_red_500 =
    Css.batch
        [ Css.property "--tw-gradient-from" "#f56565"
        , Css.property "--tw-gradient-stops" "var(--tw-gradient-from), var(--tw-gradient-to, rgba(245, 101, 101, 0))"
        ]


{-| This class has the effect of following css declaration:

```css
.from-red-600 {
  --tw-gradient-from: #e53e3e;
  --tw-gradient-stops: var(--tw-gradient-from), var(--tw-gradient-to, rgba(229, 62, 62, 0))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
from_red_600 : Css.Style
from_red_600 =
    Css.batch
        [ Css.property "--tw-gradient-from" "#e53e3e"
        , Css.property "--tw-gradient-stops" "var(--tw-gradient-from), var(--tw-gradient-to, rgba(229, 62, 62, 0))"
        ]


{-| This class has the effect of following css declaration:

```css
.from-red-700 {
  --tw-gradient-from: #c53030;
  --tw-gradient-stops: var(--tw-gradient-from), var(--tw-gradient-to, rgba(197, 48, 48, 0))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
from_red_700 : Css.Style
from_red_700 =
    Css.batch
        [ Css.property "--tw-gradient-from" "#c53030"
        , Css.property "--tw-gradient-stops" "var(--tw-gradient-from), var(--tw-gradient-to, rgba(197, 48, 48, 0))"
        ]


{-| This class has the effect of following css declaration:

```css
.from-red-800 {
  --tw-gradient-from: #9b2c2c;
  --tw-gradient-stops: var(--tw-gradient-from), var(--tw-gradient-to, rgba(155, 44, 44, 0))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
from_red_800 : Css.Style
from_red_800 =
    Css.batch
        [ Css.property "--tw-gradient-from" "#9b2c2c"
        , Css.property "--tw-gradient-stops" "var(--tw-gradient-from), var(--tw-gradient-to, rgba(155, 44, 44, 0))"
        ]


{-| This class has the effect of following css declaration:

```css
.from-red-900 {
  --tw-gradient-from: #742a2a;
  --tw-gradient-stops: var(--tw-gradient-from), var(--tw-gradient-to, rgba(116, 42, 42, 0))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
from_red_900 : Css.Style
from_red_900 =
    Css.batch
        [ Css.property "--tw-gradient-from" "#742a2a"
        , Css.property "--tw-gradient-stops" "var(--tw-gradient-from), var(--tw-gradient-to, rgba(116, 42, 42, 0))"
        ]


{-| This class has the effect of following css declaration:

```css
.from-teal-100 {
  --tw-gradient-from: #e6fffa;
  --tw-gradient-stops: var(--tw-gradient-from), var(--tw-gradient-to, rgba(230, 255, 250, 0))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
from_teal_100 : Css.Style
from_teal_100 =
    Css.batch
        [ Css.property "--tw-gradient-from" "#e6fffa"
        , Css.property "--tw-gradient-stops" "var(--tw-gradient-from), var(--tw-gradient-to, rgba(230, 255, 250, 0))"
        ]


{-| This class has the effect of following css declaration:

```css
.from-teal-200 {
  --tw-gradient-from: #b2f5ea;
  --tw-gradient-stops: var(--tw-gradient-from), var(--tw-gradient-to, rgba(178, 245, 234, 0))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
from_teal_200 : Css.Style
from_teal_200 =
    Css.batch
        [ Css.property "--tw-gradient-from" "#b2f5ea"
        , Css.property "--tw-gradient-stops" "var(--tw-gradient-from), var(--tw-gradient-to, rgba(178, 245, 234, 0))"
        ]


{-| This class has the effect of following css declaration:

```css
.from-teal-300 {
  --tw-gradient-from: #81e6d9;
  --tw-gradient-stops: var(--tw-gradient-from), var(--tw-gradient-to, rgba(129, 230, 217, 0))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
from_teal_300 : Css.Style
from_teal_300 =
    Css.batch
        [ Css.property "--tw-gradient-from" "#81e6d9"
        , Css.property "--tw-gradient-stops" "var(--tw-gradient-from), var(--tw-gradient-to, rgba(129, 230, 217, 0))"
        ]


{-| This class has the effect of following css declaration:

```css
.from-teal-400 {
  --tw-gradient-from: #4fd1c5;
  --tw-gradient-stops: var(--tw-gradient-from), var(--tw-gradient-to, rgba(79, 209, 197, 0))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
from_teal_400 : Css.Style
from_teal_400 =
    Css.batch
        [ Css.property "--tw-gradient-from" "#4fd1c5"
        , Css.property "--tw-gradient-stops" "var(--tw-gradient-from), var(--tw-gradient-to, rgba(79, 209, 197, 0))"
        ]


{-| This class has the effect of following css declaration:

```css
.from-teal-500 {
  --tw-gradient-from: #38b2ac;
  --tw-gradient-stops: var(--tw-gradient-from), var(--tw-gradient-to, rgba(56, 178, 172, 0))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
from_teal_500 : Css.Style
from_teal_500 =
    Css.batch
        [ Css.property "--tw-gradient-from" "#38b2ac"
        , Css.property "--tw-gradient-stops" "var(--tw-gradient-from), var(--tw-gradient-to, rgba(56, 178, 172, 0))"
        ]


{-| This class has the effect of following css declaration:

```css
.from-teal-600 {
  --tw-gradient-from: #319795;
  --tw-gradient-stops: var(--tw-gradient-from), var(--tw-gradient-to, rgba(49, 151, 149, 0))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
from_teal_600 : Css.Style
from_teal_600 =
    Css.batch
        [ Css.property "--tw-gradient-from" "#319795"
        , Css.property "--tw-gradient-stops" "var(--tw-gradient-from), var(--tw-gradient-to, rgba(49, 151, 149, 0))"
        ]


{-| This class has the effect of following css declaration:

```css
.from-teal-700 {
  --tw-gradient-from: #2c7a7b;
  --tw-gradient-stops: var(--tw-gradient-from), var(--tw-gradient-to, rgba(44, 122, 123, 0))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
from_teal_700 : Css.Style
from_teal_700 =
    Css.batch
        [ Css.property "--tw-gradient-from" "#2c7a7b"
        , Css.property "--tw-gradient-stops" "var(--tw-gradient-from), var(--tw-gradient-to, rgba(44, 122, 123, 0))"
        ]


{-| This class has the effect of following css declaration:

```css
.from-teal-800 {
  --tw-gradient-from: #285e61;
  --tw-gradient-stops: var(--tw-gradient-from), var(--tw-gradient-to, rgba(40, 94, 97, 0))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
from_teal_800 : Css.Style
from_teal_800 =
    Css.batch
        [ Css.property "--tw-gradient-from" "#285e61"
        , Css.property "--tw-gradient-stops" "var(--tw-gradient-from), var(--tw-gradient-to, rgba(40, 94, 97, 0))"
        ]


{-| This class has the effect of following css declaration:

```css
.from-teal-900 {
  --tw-gradient-from: #234e52;
  --tw-gradient-stops: var(--tw-gradient-from), var(--tw-gradient-to, rgba(35, 78, 82, 0))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
from_teal_900 : Css.Style
from_teal_900 =
    Css.batch
        [ Css.property "--tw-gradient-from" "#234e52"
        , Css.property "--tw-gradient-stops" "var(--tw-gradient-from), var(--tw-gradient-to, rgba(35, 78, 82, 0))"
        ]


{-| This class has the effect of following css declaration:

```css
.from-transparent {
  --tw-gradient-from: transparent;
  --tw-gradient-stops: var(--tw-gradient-from), var(--tw-gradient-to, rgba(0, 0, 0, 0))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
from_transparent : Css.Style
from_transparent =
    Css.batch
        [ Css.property "--tw-gradient-from" "transparent"
        , Css.property "--tw-gradient-stops" "var(--tw-gradient-from), var(--tw-gradient-to, rgba(0, 0, 0, 0))"
        ]


{-| This class has the effect of following css declaration:

```css
.from-white {
  --tw-gradient-from: #fff;
  --tw-gradient-stops: var(--tw-gradient-from), var(--tw-gradient-to, rgba(255, 255, 255, 0))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
from_white : Css.Style
from_white =
    Css.batch
        [ Css.property "--tw-gradient-from" "#fff"
        , Css.property "--tw-gradient-stops" "var(--tw-gradient-from), var(--tw-gradient-to, rgba(255, 255, 255, 0))"
        ]


{-| This class has the effect of following css declaration:

```css
.from-yellow-100 {
  --tw-gradient-from: #fffff0;
  --tw-gradient-stops: var(--tw-gradient-from), var(--tw-gradient-to, rgba(255, 255, 240, 0))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
from_yellow_100 : Css.Style
from_yellow_100 =
    Css.batch
        [ Css.property "--tw-gradient-from" "#fffff0"
        , Css.property "--tw-gradient-stops" "var(--tw-gradient-from), var(--tw-gradient-to, rgba(255, 255, 240, 0))"
        ]


{-| This class has the effect of following css declaration:

```css
.from-yellow-200 {
  --tw-gradient-from: #fefcbf;
  --tw-gradient-stops: var(--tw-gradient-from), var(--tw-gradient-to, rgba(254, 252, 191, 0))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
from_yellow_200 : Css.Style
from_yellow_200 =
    Css.batch
        [ Css.property "--tw-gradient-from" "#fefcbf"
        , Css.property "--tw-gradient-stops" "var(--tw-gradient-from), var(--tw-gradient-to, rgba(254, 252, 191, 0))"
        ]


{-| This class has the effect of following css declaration:

```css
.from-yellow-300 {
  --tw-gradient-from: #faf089;
  --tw-gradient-stops: var(--tw-gradient-from), var(--tw-gradient-to, rgba(250, 240, 137, 0))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
from_yellow_300 : Css.Style
from_yellow_300 =
    Css.batch
        [ Css.property "--tw-gradient-from" "#faf089"
        , Css.property "--tw-gradient-stops" "var(--tw-gradient-from), var(--tw-gradient-to, rgba(250, 240, 137, 0))"
        ]


{-| This class has the effect of following css declaration:

```css
.from-yellow-400 {
  --tw-gradient-from: #f6e05e;
  --tw-gradient-stops: var(--tw-gradient-from), var(--tw-gradient-to, rgba(246, 224, 94, 0))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
from_yellow_400 : Css.Style
from_yellow_400 =
    Css.batch
        [ Css.property "--tw-gradient-from" "#f6e05e"
        , Css.property "--tw-gradient-stops" "var(--tw-gradient-from), var(--tw-gradient-to, rgba(246, 224, 94, 0))"
        ]


{-| This class has the effect of following css declaration:

```css
.from-yellow-500 {
  --tw-gradient-from: #ecc94b;
  --tw-gradient-stops: var(--tw-gradient-from), var(--tw-gradient-to, rgba(236, 201, 75, 0))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
from_yellow_500 : Css.Style
from_yellow_500 =
    Css.batch
        [ Css.property "--tw-gradient-from" "#ecc94b"
        , Css.property "--tw-gradient-stops" "var(--tw-gradient-from), var(--tw-gradient-to, rgba(236, 201, 75, 0))"
        ]


{-| This class has the effect of following css declaration:

```css
.from-yellow-600 {
  --tw-gradient-from: #d69e2e;
  --tw-gradient-stops: var(--tw-gradient-from), var(--tw-gradient-to, rgba(214, 158, 46, 0))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
from_yellow_600 : Css.Style
from_yellow_600 =
    Css.batch
        [ Css.property "--tw-gradient-from" "#d69e2e"
        , Css.property "--tw-gradient-stops" "var(--tw-gradient-from), var(--tw-gradient-to, rgba(214, 158, 46, 0))"
        ]


{-| This class has the effect of following css declaration:

```css
.from-yellow-700 {
  --tw-gradient-from: #b7791f;
  --tw-gradient-stops: var(--tw-gradient-from), var(--tw-gradient-to, rgba(183, 121, 31, 0))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
from_yellow_700 : Css.Style
from_yellow_700 =
    Css.batch
        [ Css.property "--tw-gradient-from" "#b7791f"
        , Css.property "--tw-gradient-stops" "var(--tw-gradient-from), var(--tw-gradient-to, rgba(183, 121, 31, 0))"
        ]


{-| This class has the effect of following css declaration:

```css
.from-yellow-800 {
  --tw-gradient-from: #975a16;
  --tw-gradient-stops: var(--tw-gradient-from), var(--tw-gradient-to, rgba(151, 90, 22, 0))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
from_yellow_800 : Css.Style
from_yellow_800 =
    Css.batch
        [ Css.property "--tw-gradient-from" "#975a16"
        , Css.property "--tw-gradient-stops" "var(--tw-gradient-from), var(--tw-gradient-to, rgba(151, 90, 22, 0))"
        ]


{-| This class has the effect of following css declaration:

```css
.from-yellow-900 {
  --tw-gradient-from: #744210;
  --tw-gradient-stops: var(--tw-gradient-from), var(--tw-gradient-to, rgba(116, 66, 16, 0))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
from_yellow_900 : Css.Style
from_yellow_900 =
    Css.batch
        [ Css.property "--tw-gradient-from" "#744210"
        , Css.property "--tw-gradient-stops" "var(--tw-gradient-from), var(--tw-gradient-to, rgba(116, 66, 16, 0))"
        ]


{-| This class has the effect of following css declaration:

```css
.gap-0 {
  gap: 0px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_0 : Css.Style
gap_0 =
    Css.property "gap" "0px"


{-| This class has the effect of following css declaration:

```css
.gap-0\.5 {
  gap: 0.125rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_0_dot_5 : Css.Style
gap_0_dot_5 =
    Css.property "gap" "0.125rem"


{-| This class has the effect of following css declaration:

```css
.gap-1 {
  gap: 0.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_1 : Css.Style
gap_1 =
    Css.property "gap" "0.25rem"


{-| This class has the effect of following css declaration:

```css
.gap-10 {
  gap: 2.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_10 : Css.Style
gap_10 =
    Css.property "gap" "2.5rem"


{-| This class has the effect of following css declaration:

```css
.gap-11 {
  gap: 2.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_11 : Css.Style
gap_11 =
    Css.property "gap" "2.75rem"


{-| This class has the effect of following css declaration:

```css
.gap-12 {
  gap: 3rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_12 : Css.Style
gap_12 =
    Css.property "gap" "3rem"


{-| This class has the effect of following css declaration:

```css
.gap-14 {
  gap: 3.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_14 : Css.Style
gap_14 =
    Css.property "gap" "3.5rem"


{-| This class has the effect of following css declaration:

```css
.gap-16 {
  gap: 4rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_16 : Css.Style
gap_16 =
    Css.property "gap" "4rem"


{-| This class has the effect of following css declaration:

```css
.gap-1\.5 {
  gap: 0.375rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_1_dot_5 : Css.Style
gap_1_dot_5 =
    Css.property "gap" "0.375rem"


{-| This class has the effect of following css declaration:

```css
.gap-2 {
  gap: 0.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_2 : Css.Style
gap_2 =
    Css.property "gap" "0.5rem"


{-| This class has the effect of following css declaration:

```css
.gap-20 {
  gap: 5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_20 : Css.Style
gap_20 =
    Css.property "gap" "5rem"


{-| This class has the effect of following css declaration:

```css
.gap-24 {
  gap: 6rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_24 : Css.Style
gap_24 =
    Css.property "gap" "6rem"


{-| This class has the effect of following css declaration:

```css
.gap-28 {
  gap: 7rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_28 : Css.Style
gap_28 =
    Css.property "gap" "7rem"


{-| This class has the effect of following css declaration:

```css
.gap-2\.5 {
  gap: 0.625rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_2_dot_5 : Css.Style
gap_2_dot_5 =
    Css.property "gap" "0.625rem"


{-| This class has the effect of following css declaration:

```css
.gap-3 {
  gap: 0.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_3 : Css.Style
gap_3 =
    Css.property "gap" "0.75rem"


{-| This class has the effect of following css declaration:

```css
.gap-32 {
  gap: 8rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_32 : Css.Style
gap_32 =
    Css.property "gap" "8rem"


{-| This class has the effect of following css declaration:

```css
.gap-36 {
  gap: 9rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_36 : Css.Style
gap_36 =
    Css.property "gap" "9rem"


{-| This class has the effect of following css declaration:

```css
.gap-3\.5 {
  gap: 0.875rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_3_dot_5 : Css.Style
gap_3_dot_5 =
    Css.property "gap" "0.875rem"


{-| This class has the effect of following css declaration:

```css
.gap-4 {
  gap: 1rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_4 : Css.Style
gap_4 =
    Css.property "gap" "1rem"


{-| This class has the effect of following css declaration:

```css
.gap-40 {
  gap: 10rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_40 : Css.Style
gap_40 =
    Css.property "gap" "10rem"


{-| This class has the effect of following css declaration:

```css
.gap-44 {
  gap: 11rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_44 : Css.Style
gap_44 =
    Css.property "gap" "11rem"


{-| This class has the effect of following css declaration:

```css
.gap-48 {
  gap: 12rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_48 : Css.Style
gap_48 =
    Css.property "gap" "12rem"


{-| This class has the effect of following css declaration:

```css
.gap-5 {
  gap: 1.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_5 : Css.Style
gap_5 =
    Css.property "gap" "1.25rem"


{-| This class has the effect of following css declaration:

```css
.gap-52 {
  gap: 13rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_52 : Css.Style
gap_52 =
    Css.property "gap" "13rem"


{-| This class has the effect of following css declaration:

```css
.gap-56 {
  gap: 14rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_56 : Css.Style
gap_56 =
    Css.property "gap" "14rem"


{-| This class has the effect of following css declaration:

```css
.gap-6 {
  gap: 1.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_6 : Css.Style
gap_6 =
    Css.property "gap" "1.5rem"


{-| This class has the effect of following css declaration:

```css
.gap-60 {
  gap: 15rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_60 : Css.Style
gap_60 =
    Css.property "gap" "15rem"


{-| This class has the effect of following css declaration:

```css
.gap-64 {
  gap: 16rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_64 : Css.Style
gap_64 =
    Css.property "gap" "16rem"


{-| This class has the effect of following css declaration:

```css
.gap-7 {
  gap: 1.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_7 : Css.Style
gap_7 =
    Css.property "gap" "1.75rem"


{-| This class has the effect of following css declaration:

```css
.gap-72 {
  gap: 18rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_72 : Css.Style
gap_72 =
    Css.property "gap" "18rem"


{-| This class has the effect of following css declaration:

```css
.gap-8 {
  gap: 2rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_8 : Css.Style
gap_8 =
    Css.property "gap" "2rem"


{-| This class has the effect of following css declaration:

```css
.gap-80 {
  gap: 20rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_80 : Css.Style
gap_80 =
    Css.property "gap" "20rem"


{-| This class has the effect of following css declaration:

```css
.gap-9 {
  gap: 2.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_9 : Css.Style
gap_9 =
    Css.property "gap" "2.25rem"


{-| This class has the effect of following css declaration:

```css
.gap-96 {
  gap: 24rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_96 : Css.Style
gap_96 =
    Css.property "gap" "24rem"


{-| This class has the effect of following css declaration:

```css
.gap-px {
  gap: 1px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_px : Css.Style
gap_px =
    Css.property "gap" "1px"


{-| This class has the effect of following css declaration:

```css
.gap-x-0 {
  column-gap: 0px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_x_0 : Css.Style
gap_x_0 =
    Css.property "column-gap" "0px"


{-| This class has the effect of following css declaration:

```css
.gap-x-0\.5 {
  column-gap: 0.125rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_x_0_dot_5 : Css.Style
gap_x_0_dot_5 =
    Css.property "column-gap" "0.125rem"


{-| This class has the effect of following css declaration:

```css
.gap-x-1 {
  column-gap: 0.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_x_1 : Css.Style
gap_x_1 =
    Css.property "column-gap" "0.25rem"


{-| This class has the effect of following css declaration:

```css
.gap-x-10 {
  column-gap: 2.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_x_10 : Css.Style
gap_x_10 =
    Css.property "column-gap" "2.5rem"


{-| This class has the effect of following css declaration:

```css
.gap-x-11 {
  column-gap: 2.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_x_11 : Css.Style
gap_x_11 =
    Css.property "column-gap" "2.75rem"


{-| This class has the effect of following css declaration:

```css
.gap-x-12 {
  column-gap: 3rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_x_12 : Css.Style
gap_x_12 =
    Css.property "column-gap" "3rem"


{-| This class has the effect of following css declaration:

```css
.gap-x-14 {
  column-gap: 3.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_x_14 : Css.Style
gap_x_14 =
    Css.property "column-gap" "3.5rem"


{-| This class has the effect of following css declaration:

```css
.gap-x-16 {
  column-gap: 4rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_x_16 : Css.Style
gap_x_16 =
    Css.property "column-gap" "4rem"


{-| This class has the effect of following css declaration:

```css
.gap-x-1\.5 {
  column-gap: 0.375rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_x_1_dot_5 : Css.Style
gap_x_1_dot_5 =
    Css.property "column-gap" "0.375rem"


{-| This class has the effect of following css declaration:

```css
.gap-x-2 {
  column-gap: 0.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_x_2 : Css.Style
gap_x_2 =
    Css.property "column-gap" "0.5rem"


{-| This class has the effect of following css declaration:

```css
.gap-x-20 {
  column-gap: 5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_x_20 : Css.Style
gap_x_20 =
    Css.property "column-gap" "5rem"


{-| This class has the effect of following css declaration:

```css
.gap-x-24 {
  column-gap: 6rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_x_24 : Css.Style
gap_x_24 =
    Css.property "column-gap" "6rem"


{-| This class has the effect of following css declaration:

```css
.gap-x-28 {
  column-gap: 7rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_x_28 : Css.Style
gap_x_28 =
    Css.property "column-gap" "7rem"


{-| This class has the effect of following css declaration:

```css
.gap-x-2\.5 {
  column-gap: 0.625rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_x_2_dot_5 : Css.Style
gap_x_2_dot_5 =
    Css.property "column-gap" "0.625rem"


{-| This class has the effect of following css declaration:

```css
.gap-x-3 {
  column-gap: 0.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_x_3 : Css.Style
gap_x_3 =
    Css.property "column-gap" "0.75rem"


{-| This class has the effect of following css declaration:

```css
.gap-x-32 {
  column-gap: 8rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_x_32 : Css.Style
gap_x_32 =
    Css.property "column-gap" "8rem"


{-| This class has the effect of following css declaration:

```css
.gap-x-36 {
  column-gap: 9rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_x_36 : Css.Style
gap_x_36 =
    Css.property "column-gap" "9rem"


{-| This class has the effect of following css declaration:

```css
.gap-x-3\.5 {
  column-gap: 0.875rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_x_3_dot_5 : Css.Style
gap_x_3_dot_5 =
    Css.property "column-gap" "0.875rem"


{-| This class has the effect of following css declaration:

```css
.gap-x-4 {
  column-gap: 1rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_x_4 : Css.Style
gap_x_4 =
    Css.property "column-gap" "1rem"


{-| This class has the effect of following css declaration:

```css
.gap-x-40 {
  column-gap: 10rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_x_40 : Css.Style
gap_x_40 =
    Css.property "column-gap" "10rem"


{-| This class has the effect of following css declaration:

```css
.gap-x-44 {
  column-gap: 11rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_x_44 : Css.Style
gap_x_44 =
    Css.property "column-gap" "11rem"


{-| This class has the effect of following css declaration:

```css
.gap-x-48 {
  column-gap: 12rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_x_48 : Css.Style
gap_x_48 =
    Css.property "column-gap" "12rem"


{-| This class has the effect of following css declaration:

```css
.gap-x-5 {
  column-gap: 1.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_x_5 : Css.Style
gap_x_5 =
    Css.property "column-gap" "1.25rem"


{-| This class has the effect of following css declaration:

```css
.gap-x-52 {
  column-gap: 13rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_x_52 : Css.Style
gap_x_52 =
    Css.property "column-gap" "13rem"


{-| This class has the effect of following css declaration:

```css
.gap-x-56 {
  column-gap: 14rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_x_56 : Css.Style
gap_x_56 =
    Css.property "column-gap" "14rem"


{-| This class has the effect of following css declaration:

```css
.gap-x-6 {
  column-gap: 1.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_x_6 : Css.Style
gap_x_6 =
    Css.property "column-gap" "1.5rem"


{-| This class has the effect of following css declaration:

```css
.gap-x-60 {
  column-gap: 15rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_x_60 : Css.Style
gap_x_60 =
    Css.property "column-gap" "15rem"


{-| This class has the effect of following css declaration:

```css
.gap-x-64 {
  column-gap: 16rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_x_64 : Css.Style
gap_x_64 =
    Css.property "column-gap" "16rem"


{-| This class has the effect of following css declaration:

```css
.gap-x-7 {
  column-gap: 1.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_x_7 : Css.Style
gap_x_7 =
    Css.property "column-gap" "1.75rem"


{-| This class has the effect of following css declaration:

```css
.gap-x-72 {
  column-gap: 18rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_x_72 : Css.Style
gap_x_72 =
    Css.property "column-gap" "18rem"


{-| This class has the effect of following css declaration:

```css
.gap-x-8 {
  column-gap: 2rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_x_8 : Css.Style
gap_x_8 =
    Css.property "column-gap" "2rem"


{-| This class has the effect of following css declaration:

```css
.gap-x-80 {
  column-gap: 20rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_x_80 : Css.Style
gap_x_80 =
    Css.property "column-gap" "20rem"


{-| This class has the effect of following css declaration:

```css
.gap-x-9 {
  column-gap: 2.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_x_9 : Css.Style
gap_x_9 =
    Css.property "column-gap" "2.25rem"


{-| This class has the effect of following css declaration:

```css
.gap-x-96 {
  column-gap: 24rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_x_96 : Css.Style
gap_x_96 =
    Css.property "column-gap" "24rem"


{-| This class has the effect of following css declaration:

```css
.gap-x-px {
  column-gap: 1px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_x_px : Css.Style
gap_x_px =
    Css.property "column-gap" "1px"


{-| This class has the effect of following css declaration:

```css
.gap-y-0 {
  row-gap: 0px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_y_0 : Css.Style
gap_y_0 =
    Css.property "row-gap" "0px"


{-| This class has the effect of following css declaration:

```css
.gap-y-0\.5 {
  row-gap: 0.125rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_y_0_dot_5 : Css.Style
gap_y_0_dot_5 =
    Css.property "row-gap" "0.125rem"


{-| This class has the effect of following css declaration:

```css
.gap-y-1 {
  row-gap: 0.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_y_1 : Css.Style
gap_y_1 =
    Css.property "row-gap" "0.25rem"


{-| This class has the effect of following css declaration:

```css
.gap-y-10 {
  row-gap: 2.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_y_10 : Css.Style
gap_y_10 =
    Css.property "row-gap" "2.5rem"


{-| This class has the effect of following css declaration:

```css
.gap-y-11 {
  row-gap: 2.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_y_11 : Css.Style
gap_y_11 =
    Css.property "row-gap" "2.75rem"


{-| This class has the effect of following css declaration:

```css
.gap-y-12 {
  row-gap: 3rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_y_12 : Css.Style
gap_y_12 =
    Css.property "row-gap" "3rem"


{-| This class has the effect of following css declaration:

```css
.gap-y-14 {
  row-gap: 3.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_y_14 : Css.Style
gap_y_14 =
    Css.property "row-gap" "3.5rem"


{-| This class has the effect of following css declaration:

```css
.gap-y-16 {
  row-gap: 4rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_y_16 : Css.Style
gap_y_16 =
    Css.property "row-gap" "4rem"


{-| This class has the effect of following css declaration:

```css
.gap-y-1\.5 {
  row-gap: 0.375rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_y_1_dot_5 : Css.Style
gap_y_1_dot_5 =
    Css.property "row-gap" "0.375rem"


{-| This class has the effect of following css declaration:

```css
.gap-y-2 {
  row-gap: 0.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_y_2 : Css.Style
gap_y_2 =
    Css.property "row-gap" "0.5rem"


{-| This class has the effect of following css declaration:

```css
.gap-y-20 {
  row-gap: 5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_y_20 : Css.Style
gap_y_20 =
    Css.property "row-gap" "5rem"


{-| This class has the effect of following css declaration:

```css
.gap-y-24 {
  row-gap: 6rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_y_24 : Css.Style
gap_y_24 =
    Css.property "row-gap" "6rem"


{-| This class has the effect of following css declaration:

```css
.gap-y-28 {
  row-gap: 7rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_y_28 : Css.Style
gap_y_28 =
    Css.property "row-gap" "7rem"


{-| This class has the effect of following css declaration:

```css
.gap-y-2\.5 {
  row-gap: 0.625rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_y_2_dot_5 : Css.Style
gap_y_2_dot_5 =
    Css.property "row-gap" "0.625rem"


{-| This class has the effect of following css declaration:

```css
.gap-y-3 {
  row-gap: 0.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_y_3 : Css.Style
gap_y_3 =
    Css.property "row-gap" "0.75rem"


{-| This class has the effect of following css declaration:

```css
.gap-y-32 {
  row-gap: 8rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_y_32 : Css.Style
gap_y_32 =
    Css.property "row-gap" "8rem"


{-| This class has the effect of following css declaration:

```css
.gap-y-36 {
  row-gap: 9rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_y_36 : Css.Style
gap_y_36 =
    Css.property "row-gap" "9rem"


{-| This class has the effect of following css declaration:

```css
.gap-y-3\.5 {
  row-gap: 0.875rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_y_3_dot_5 : Css.Style
gap_y_3_dot_5 =
    Css.property "row-gap" "0.875rem"


{-| This class has the effect of following css declaration:

```css
.gap-y-4 {
  row-gap: 1rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_y_4 : Css.Style
gap_y_4 =
    Css.property "row-gap" "1rem"


{-| This class has the effect of following css declaration:

```css
.gap-y-40 {
  row-gap: 10rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_y_40 : Css.Style
gap_y_40 =
    Css.property "row-gap" "10rem"


{-| This class has the effect of following css declaration:

```css
.gap-y-44 {
  row-gap: 11rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_y_44 : Css.Style
gap_y_44 =
    Css.property "row-gap" "11rem"


{-| This class has the effect of following css declaration:

```css
.gap-y-48 {
  row-gap: 12rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_y_48 : Css.Style
gap_y_48 =
    Css.property "row-gap" "12rem"


{-| This class has the effect of following css declaration:

```css
.gap-y-5 {
  row-gap: 1.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_y_5 : Css.Style
gap_y_5 =
    Css.property "row-gap" "1.25rem"


{-| This class has the effect of following css declaration:

```css
.gap-y-52 {
  row-gap: 13rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_y_52 : Css.Style
gap_y_52 =
    Css.property "row-gap" "13rem"


{-| This class has the effect of following css declaration:

```css
.gap-y-56 {
  row-gap: 14rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_y_56 : Css.Style
gap_y_56 =
    Css.property "row-gap" "14rem"


{-| This class has the effect of following css declaration:

```css
.gap-y-6 {
  row-gap: 1.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_y_6 : Css.Style
gap_y_6 =
    Css.property "row-gap" "1.5rem"


{-| This class has the effect of following css declaration:

```css
.gap-y-60 {
  row-gap: 15rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_y_60 : Css.Style
gap_y_60 =
    Css.property "row-gap" "15rem"


{-| This class has the effect of following css declaration:

```css
.gap-y-64 {
  row-gap: 16rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_y_64 : Css.Style
gap_y_64 =
    Css.property "row-gap" "16rem"


{-| This class has the effect of following css declaration:

```css
.gap-y-7 {
  row-gap: 1.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_y_7 : Css.Style
gap_y_7 =
    Css.property "row-gap" "1.75rem"


{-| This class has the effect of following css declaration:

```css
.gap-y-72 {
  row-gap: 18rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_y_72 : Css.Style
gap_y_72 =
    Css.property "row-gap" "18rem"


{-| This class has the effect of following css declaration:

```css
.gap-y-8 {
  row-gap: 2rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_y_8 : Css.Style
gap_y_8 =
    Css.property "row-gap" "2rem"


{-| This class has the effect of following css declaration:

```css
.gap-y-80 {
  row-gap: 20rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_y_80 : Css.Style
gap_y_80 =
    Css.property "row-gap" "20rem"


{-| This class has the effect of following css declaration:

```css
.gap-y-9 {
  row-gap: 2.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_y_9 : Css.Style
gap_y_9 =
    Css.property "row-gap" "2.25rem"


{-| This class has the effect of following css declaration:

```css
.gap-y-96 {
  row-gap: 24rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_y_96 : Css.Style
gap_y_96 =
    Css.property "row-gap" "24rem"


{-| This class has the effect of following css declaration:

```css
.gap-y-px {
  row-gap: 1px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_y_px : Css.Style
gap_y_px =
    Css.property "row-gap" "1px"


{-| This class has the effect of following css declaration:

```css
.grayscale {
  --tw-grayscale: grayscale(100%)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
grayscale : Css.Style
grayscale =
    Css.property "--tw-grayscale" "grayscale(100%)"


{-| This class has the effect of following css declaration:

```css
.grayscale-0 {
  --tw-grayscale: grayscale(0)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
grayscale_0 : Css.Style
grayscale_0 =
    Css.property "--tw-grayscale" "grayscale(0)"


{-| This class has the effect of following css declaration:

```css
.grid {
  display: grid
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
grid : Css.Style
grid =
    Css.property "display" "grid"


{-| This class has the effect of following css declaration:

```css
.grid-cols-1 {
  grid-template-columns: repeat(1, minmax(0, 1fr))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
grid_cols_1 : Css.Style
grid_cols_1 =
    Css.property "grid-template-columns" "repeat(1, minmax(0, 1fr))"


{-| This class has the effect of following css declaration:

```css
.grid-cols-10 {
  grid-template-columns: repeat(10, minmax(0, 1fr))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
grid_cols_10 : Css.Style
grid_cols_10 =
    Css.property "grid-template-columns" "repeat(10, minmax(0, 1fr))"


{-| This class has the effect of following css declaration:

```css
.grid-cols-11 {
  grid-template-columns: repeat(11, minmax(0, 1fr))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
grid_cols_11 : Css.Style
grid_cols_11 =
    Css.property "grid-template-columns" "repeat(11, minmax(0, 1fr))"


{-| This class has the effect of following css declaration:

```css
.grid-cols-12 {
  grid-template-columns: repeat(12, minmax(0, 1fr))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
grid_cols_12 : Css.Style
grid_cols_12 =
    Css.property "grid-template-columns" "repeat(12, minmax(0, 1fr))"


{-| This class has the effect of following css declaration:

```css
.grid-cols-2 {
  grid-template-columns: repeat(2, minmax(0, 1fr))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
grid_cols_2 : Css.Style
grid_cols_2 =
    Css.property "grid-template-columns" "repeat(2, minmax(0, 1fr))"


{-| This class has the effect of following css declaration:

```css
.grid-cols-3 {
  grid-template-columns: repeat(3, minmax(0, 1fr))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
grid_cols_3 : Css.Style
grid_cols_3 =
    Css.property "grid-template-columns" "repeat(3, minmax(0, 1fr))"


{-| This class has the effect of following css declaration:

```css
.grid-cols-4 {
  grid-template-columns: repeat(4, minmax(0, 1fr))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
grid_cols_4 : Css.Style
grid_cols_4 =
    Css.property "grid-template-columns" "repeat(4, minmax(0, 1fr))"


{-| This class has the effect of following css declaration:

```css
.grid-cols-5 {
  grid-template-columns: repeat(5, minmax(0, 1fr))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
grid_cols_5 : Css.Style
grid_cols_5 =
    Css.property "grid-template-columns" "repeat(5, minmax(0, 1fr))"


{-| This class has the effect of following css declaration:

```css
.grid-cols-6 {
  grid-template-columns: repeat(6, minmax(0, 1fr))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
grid_cols_6 : Css.Style
grid_cols_6 =
    Css.property "grid-template-columns" "repeat(6, minmax(0, 1fr))"


{-| This class has the effect of following css declaration:

```css
.grid-cols-7 {
  grid-template-columns: repeat(7, minmax(0, 1fr))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
grid_cols_7 : Css.Style
grid_cols_7 =
    Css.property "grid-template-columns" "repeat(7, minmax(0, 1fr))"


{-| This class has the effect of following css declaration:

```css
.grid-cols-8 {
  grid-template-columns: repeat(8, minmax(0, 1fr))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
grid_cols_8 : Css.Style
grid_cols_8 =
    Css.property "grid-template-columns" "repeat(8, minmax(0, 1fr))"


{-| This class has the effect of following css declaration:

```css
.grid-cols-9 {
  grid-template-columns: repeat(9, minmax(0, 1fr))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
grid_cols_9 : Css.Style
grid_cols_9 =
    Css.property "grid-template-columns" "repeat(9, minmax(0, 1fr))"


{-| This class has the effect of following css declaration:

```css
.grid-cols-none {
  grid-template-columns: none
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
grid_cols_none : Css.Style
grid_cols_none =
    Css.property "grid-template-columns" "none"


{-| This class has the effect of following css declaration:

```css
.grid-flow-col {
  grid-auto-flow: column
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
grid_flow_col : Css.Style
grid_flow_col =
    Css.property "grid-auto-flow" "column"


{-| This class has the effect of following css declaration:

```css
.grid-flow-col-dense {
  grid-auto-flow: column dense
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
grid_flow_col_dense : Css.Style
grid_flow_col_dense =
    Css.property "grid-auto-flow" "column dense"


{-| This class has the effect of following css declaration:

```css
.grid-flow-row {
  grid-auto-flow: row
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
grid_flow_row : Css.Style
grid_flow_row =
    Css.property "grid-auto-flow" "row"


{-| This class has the effect of following css declaration:

```css
.grid-flow-row-dense {
  grid-auto-flow: row dense
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
grid_flow_row_dense : Css.Style
grid_flow_row_dense =
    Css.property "grid-auto-flow" "row dense"


{-| This class has the effect of following css declaration:

```css
.grid-rows-1 {
  grid-template-rows: repeat(1, minmax(0, 1fr))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
grid_rows_1 : Css.Style
grid_rows_1 =
    Css.property "grid-template-rows" "repeat(1, minmax(0, 1fr))"


{-| This class has the effect of following css declaration:

```css
.grid-rows-2 {
  grid-template-rows: repeat(2, minmax(0, 1fr))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
grid_rows_2 : Css.Style
grid_rows_2 =
    Css.property "grid-template-rows" "repeat(2, minmax(0, 1fr))"


{-| This class has the effect of following css declaration:

```css
.grid-rows-3 {
  grid-template-rows: repeat(3, minmax(0, 1fr))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
grid_rows_3 : Css.Style
grid_rows_3 =
    Css.property "grid-template-rows" "repeat(3, minmax(0, 1fr))"


{-| This class has the effect of following css declaration:

```css
.grid-rows-4 {
  grid-template-rows: repeat(4, minmax(0, 1fr))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
grid_rows_4 : Css.Style
grid_rows_4 =
    Css.property "grid-template-rows" "repeat(4, minmax(0, 1fr))"


{-| This class has the effect of following css declaration:

```css
.grid-rows-5 {
  grid-template-rows: repeat(5, minmax(0, 1fr))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
grid_rows_5 : Css.Style
grid_rows_5 =
    Css.property "grid-template-rows" "repeat(5, minmax(0, 1fr))"


{-| This class has the effect of following css declaration:

```css
.grid-rows-6 {
  grid-template-rows: repeat(6, minmax(0, 1fr))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
grid_rows_6 : Css.Style
grid_rows_6 =
    Css.property "grid-template-rows" "repeat(6, minmax(0, 1fr))"


{-| This class has the effect of following css declaration:

```css
.grid-rows-none {
  grid-template-rows: none
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
grid_rows_none : Css.Style
grid_rows_none =
    Css.property "grid-template-rows" "none"


{-| This class has the effect of following css declaration:

```css
.h-0 {
  height: 0px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
h_0 : Css.Style
h_0 =
    Css.property "height" "0px"


{-| This class has the effect of following css declaration:

```css
.h-0\.5 {
  height: 0.125rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
h_0_dot_5 : Css.Style
h_0_dot_5 =
    Css.property "height" "0.125rem"


{-| This class has the effect of following css declaration:

```css
.h-1 {
  height: 0.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
h_1 : Css.Style
h_1 =
    Css.property "height" "0.25rem"


{-| This class has the effect of following css declaration:

```css
.h-10 {
  height: 2.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
h_10 : Css.Style
h_10 =
    Css.property "height" "2.5rem"


{-| This class has the effect of following css declaration:

```css
.h-11 {
  height: 2.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
h_11 : Css.Style
h_11 =
    Css.property "height" "2.75rem"


{-| This class has the effect of following css declaration:

```css
.h-12 {
  height: 3rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
h_12 : Css.Style
h_12 =
    Css.property "height" "3rem"


{-| This class has the effect of following css declaration:

```css
.h-14 {
  height: 3.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
h_14 : Css.Style
h_14 =
    Css.property "height" "3.5rem"


{-| This class has the effect of following css declaration:

```css
.h-16 {
  height: 4rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
h_16 : Css.Style
h_16 =
    Css.property "height" "4rem"


{-| This class has the effect of following css declaration:

```css
.h-1\.5 {
  height: 0.375rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
h_1_dot_5 : Css.Style
h_1_dot_5 =
    Css.property "height" "0.375rem"


{-| This class has the effect of following css declaration:

```css
.h-1\/2 {
  height: 50%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
h_1over2 : Css.Style
h_1over2 =
    Css.property "height" "50%"


{-| This class has the effect of following css declaration:

```css
.h-1\/3 {
  height: 33.333333%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
h_1over3 : Css.Style
h_1over3 =
    Css.property "height" "33.333333%"


{-| This class has the effect of following css declaration:

```css
.h-1\/4 {
  height: 25%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
h_1over4 : Css.Style
h_1over4 =
    Css.property "height" "25%"


{-| This class has the effect of following css declaration:

```css
.h-1\/5 {
  height: 20%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
h_1over5 : Css.Style
h_1over5 =
    Css.property "height" "20%"


{-| This class has the effect of following css declaration:

```css
.h-1\/6 {
  height: 16.666667%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
h_1over6 : Css.Style
h_1over6 =
    Css.property "height" "16.666667%"


{-| This class has the effect of following css declaration:

```css
.h-2 {
  height: 0.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
h_2 : Css.Style
h_2 =
    Css.property "height" "0.5rem"


{-| This class has the effect of following css declaration:

```css
.h-20 {
  height: 5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
h_20 : Css.Style
h_20 =
    Css.property "height" "5rem"


{-| This class has the effect of following css declaration:

```css
.h-24 {
  height: 6rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
h_24 : Css.Style
h_24 =
    Css.property "height" "6rem"


{-| This class has the effect of following css declaration:

```css
.h-28 {
  height: 7rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
h_28 : Css.Style
h_28 =
    Css.property "height" "7rem"


{-| This class has the effect of following css declaration:

```css
.h-2\.5 {
  height: 0.625rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
h_2_dot_5 : Css.Style
h_2_dot_5 =
    Css.property "height" "0.625rem"


{-| This class has the effect of following css declaration:

```css
.h-2\/3 {
  height: 66.666667%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
h_2over3 : Css.Style
h_2over3 =
    Css.property "height" "66.666667%"


{-| This class has the effect of following css declaration:

```css
.h-2\/4 {
  height: 50%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
h_2over4 : Css.Style
h_2over4 =
    Css.property "height" "50%"


{-| This class has the effect of following css declaration:

```css
.h-2\/5 {
  height: 40%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
h_2over5 : Css.Style
h_2over5 =
    Css.property "height" "40%"


{-| This class has the effect of following css declaration:

```css
.h-2\/6 {
  height: 33.333333%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
h_2over6 : Css.Style
h_2over6 =
    Css.property "height" "33.333333%"


{-| This class has the effect of following css declaration:

```css
.h-3 {
  height: 0.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
h_3 : Css.Style
h_3 =
    Css.property "height" "0.75rem"


{-| This class has the effect of following css declaration:

```css
.h-32 {
  height: 8rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
h_32 : Css.Style
h_32 =
    Css.property "height" "8rem"


{-| This class has the effect of following css declaration:

```css
.h-36 {
  height: 9rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
h_36 : Css.Style
h_36 =
    Css.property "height" "9rem"


{-| This class has the effect of following css declaration:

```css
.h-3\.5 {
  height: 0.875rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
h_3_dot_5 : Css.Style
h_3_dot_5 =
    Css.property "height" "0.875rem"


{-| This class has the effect of following css declaration:

```css
.h-3\/4 {
  height: 75%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
h_3over4 : Css.Style
h_3over4 =
    Css.property "height" "75%"


{-| This class has the effect of following css declaration:

```css
.h-3\/5 {
  height: 60%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
h_3over5 : Css.Style
h_3over5 =
    Css.property "height" "60%"


{-| This class has the effect of following css declaration:

```css
.h-3\/6 {
  height: 50%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
h_3over6 : Css.Style
h_3over6 =
    Css.property "height" "50%"


{-| This class has the effect of following css declaration:

```css
.h-4 {
  height: 1rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
h_4 : Css.Style
h_4 =
    Css.property "height" "1rem"


{-| This class has the effect of following css declaration:

```css
.h-40 {
  height: 10rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
h_40 : Css.Style
h_40 =
    Css.property "height" "10rem"


{-| This class has the effect of following css declaration:

```css
.h-44 {
  height: 11rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
h_44 : Css.Style
h_44 =
    Css.property "height" "11rem"


{-| This class has the effect of following css declaration:

```css
.h-48 {
  height: 12rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
h_48 : Css.Style
h_48 =
    Css.property "height" "12rem"


{-| This class has the effect of following css declaration:

```css
.h-4\/5 {
  height: 80%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
h_4over5 : Css.Style
h_4over5 =
    Css.property "height" "80%"


{-| This class has the effect of following css declaration:

```css
.h-4\/6 {
  height: 66.666667%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
h_4over6 : Css.Style
h_4over6 =
    Css.property "height" "66.666667%"


{-| This class has the effect of following css declaration:

```css
.h-5 {
  height: 1.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
h_5 : Css.Style
h_5 =
    Css.property "height" "1.25rem"


{-| This class has the effect of following css declaration:

```css
.h-52 {
  height: 13rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
h_52 : Css.Style
h_52 =
    Css.property "height" "13rem"


{-| This class has the effect of following css declaration:

```css
.h-56 {
  height: 14rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
h_56 : Css.Style
h_56 =
    Css.property "height" "14rem"


{-| This class has the effect of following css declaration:

```css
.h-5\/6 {
  height: 83.333333%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
h_5over6 : Css.Style
h_5over6 =
    Css.property "height" "83.333333%"


{-| This class has the effect of following css declaration:

```css
.h-6 {
  height: 1.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
h_6 : Css.Style
h_6 =
    Css.property "height" "1.5rem"


{-| This class has the effect of following css declaration:

```css
.h-60 {
  height: 15rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
h_60 : Css.Style
h_60 =
    Css.property "height" "15rem"


{-| This class has the effect of following css declaration:

```css
.h-64 {
  height: 16rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
h_64 : Css.Style
h_64 =
    Css.property "height" "16rem"


{-| This class has the effect of following css declaration:

```css
.h-7 {
  height: 1.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
h_7 : Css.Style
h_7 =
    Css.property "height" "1.75rem"


{-| This class has the effect of following css declaration:

```css
.h-72 {
  height: 18rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
h_72 : Css.Style
h_72 =
    Css.property "height" "18rem"


{-| This class has the effect of following css declaration:

```css
.h-8 {
  height: 2rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
h_8 : Css.Style
h_8 =
    Css.property "height" "2rem"


{-| This class has the effect of following css declaration:

```css
.h-80 {
  height: 20rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
h_80 : Css.Style
h_80 =
    Css.property "height" "20rem"


{-| This class has the effect of following css declaration:

```css
.h-9 {
  height: 2.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
h_9 : Css.Style
h_9 =
    Css.property "height" "2.25rem"


{-| This class has the effect of following css declaration:

```css
.h-96 {
  height: 24rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
h_96 : Css.Style
h_96 =
    Css.property "height" "24rem"


{-| This class has the effect of following css declaration:

```css
.h-auto {
  height: auto
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
h_auto : Css.Style
h_auto =
    Css.property "height" "auto"


{-| This class has the effect of following css declaration:

```css
.h-full {
  height: 100%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
h_full : Css.Style
h_full =
    Css.property "height" "100%"


{-| This class has the effect of following css declaration:

```css
.h-px {
  height: 1px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
h_px : Css.Style
h_px =
    Css.property "height" "1px"


{-| This class has the effect of following css declaration:

```css
.h-screen {
  height: 100vh
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
h_screen : Css.Style
h_screen =
    Css.property "height" "100vh"


{-| This class has the effect of following css declaration:

```css
.hidden {
  display: none
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
hidden : Css.Style
hidden =
    Css.property "display" "none"


{-| This class has the effect of following css declaration:

```css
.hue-rotate-0 {
  --tw-hue-rotate: hue-rotate(0deg)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
hue_rotate_0 : Css.Style
hue_rotate_0 =
    Css.property "--tw-hue-rotate" "hue-rotate(0deg)"


{-| This class has the effect of following css declaration:

```css
.hue-rotate-15 {
  --tw-hue-rotate: hue-rotate(15deg)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
hue_rotate_15 : Css.Style
hue_rotate_15 =
    Css.property "--tw-hue-rotate" "hue-rotate(15deg)"


{-| This class has the effect of following css declaration:

```css
.hue-rotate-180 {
  --tw-hue-rotate: hue-rotate(180deg)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
hue_rotate_180 : Css.Style
hue_rotate_180 =
    Css.property "--tw-hue-rotate" "hue-rotate(180deg)"


{-| This class has the effect of following css declaration:

```css
.hue-rotate-30 {
  --tw-hue-rotate: hue-rotate(30deg)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
hue_rotate_30 : Css.Style
hue_rotate_30 =
    Css.property "--tw-hue-rotate" "hue-rotate(30deg)"


{-| This class has the effect of following css declaration:

```css
.hue-rotate-60 {
  --tw-hue-rotate: hue-rotate(60deg)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
hue_rotate_60 : Css.Style
hue_rotate_60 =
    Css.property "--tw-hue-rotate" "hue-rotate(60deg)"


{-| This class has the effect of following css declaration:

```css
.hue-rotate-90 {
  --tw-hue-rotate: hue-rotate(90deg)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
hue_rotate_90 : Css.Style
hue_rotate_90 =
    Css.property "--tw-hue-rotate" "hue-rotate(90deg)"


{-| This class has the effect of following css declaration:

```css
.inline {
  display: inline
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inline : Css.Style
inline =
    Css.property "display" "inline"


{-| This class has the effect of following css declaration:

```css
.inline-block {
  display: inline-block
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inline_block : Css.Style
inline_block =
    Css.property "display" "inline-block"


{-| This class has the effect of following css declaration:

```css
.inline-flex {
  display: inline-flex
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inline_flex : Css.Style
inline_flex =
    Css.property "display" "inline-flex"


{-| This class has the effect of following css declaration:

```css
.inline-grid {
  display: inline-grid
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inline_grid : Css.Style
inline_grid =
    Css.property "display" "inline-grid"


{-| This class has the effect of following css declaration:

```css
.inline-table {
  display: inline-table
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inline_table : Css.Style
inline_table =
    Css.property "display" "inline-table"


{-| This class has the effect of following css declaration:

```css
.inset-0 {
  top: 0px;
  right: 0px;
  bottom: 0px;
  left: 0px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_0 : Css.Style
inset_0 =
    Css.batch
        [ Css.property "top" "0px"
        , Css.property "right" "0px"
        , Css.property "bottom" "0px"
        , Css.property "left" "0px"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-0\.5 {
  top: 0.125rem;
  right: 0.125rem;
  bottom: 0.125rem;
  left: 0.125rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_0_dot_5 : Css.Style
inset_0_dot_5 =
    Css.batch
        [ Css.property "top" "0.125rem"
        , Css.property "right" "0.125rem"
        , Css.property "bottom" "0.125rem"
        , Css.property "left" "0.125rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-1 {
  top: 0.25rem;
  right: 0.25rem;
  bottom: 0.25rem;
  left: 0.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_1 : Css.Style
inset_1 =
    Css.batch
        [ Css.property "top" "0.25rem"
        , Css.property "right" "0.25rem"
        , Css.property "bottom" "0.25rem"
        , Css.property "left" "0.25rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-10 {
  top: 2.5rem;
  right: 2.5rem;
  bottom: 2.5rem;
  left: 2.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_10 : Css.Style
inset_10 =
    Css.batch
        [ Css.property "top" "2.5rem"
        , Css.property "right" "2.5rem"
        , Css.property "bottom" "2.5rem"
        , Css.property "left" "2.5rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-11 {
  top: 2.75rem;
  right: 2.75rem;
  bottom: 2.75rem;
  left: 2.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_11 : Css.Style
inset_11 =
    Css.batch
        [ Css.property "top" "2.75rem"
        , Css.property "right" "2.75rem"
        , Css.property "bottom" "2.75rem"
        , Css.property "left" "2.75rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-12 {
  top: 3rem;
  right: 3rem;
  bottom: 3rem;
  left: 3rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_12 : Css.Style
inset_12 =
    Css.batch
        [ Css.property "top" "3rem"
        , Css.property "right" "3rem"
        , Css.property "bottom" "3rem"
        , Css.property "left" "3rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-14 {
  top: 3.5rem;
  right: 3.5rem;
  bottom: 3.5rem;
  left: 3.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_14 : Css.Style
inset_14 =
    Css.batch
        [ Css.property "top" "3.5rem"
        , Css.property "right" "3.5rem"
        , Css.property "bottom" "3.5rem"
        , Css.property "left" "3.5rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-16 {
  top: 4rem;
  right: 4rem;
  bottom: 4rem;
  left: 4rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_16 : Css.Style
inset_16 =
    Css.batch
        [ Css.property "top" "4rem"
        , Css.property "right" "4rem"
        , Css.property "bottom" "4rem"
        , Css.property "left" "4rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-1\.5 {
  top: 0.375rem;
  right: 0.375rem;
  bottom: 0.375rem;
  left: 0.375rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_1_dot_5 : Css.Style
inset_1_dot_5 =
    Css.batch
        [ Css.property "top" "0.375rem"
        , Css.property "right" "0.375rem"
        , Css.property "bottom" "0.375rem"
        , Css.property "left" "0.375rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-1\/2 {
  top: 50%;
  right: 50%;
  bottom: 50%;
  left: 50%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_1over2 : Css.Style
inset_1over2 =
    Css.batch
        [ Css.property "top" "50%"
        , Css.property "right" "50%"
        , Css.property "bottom" "50%"
        , Css.property "left" "50%"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-1\/3 {
  top: 33.333333%;
  right: 33.333333%;
  bottom: 33.333333%;
  left: 33.333333%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_1over3 : Css.Style
inset_1over3 =
    Css.batch
        [ Css.property "top" "33.333333%"
        , Css.property "right" "33.333333%"
        , Css.property "bottom" "33.333333%"
        , Css.property "left" "33.333333%"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-1\/4 {
  top: 25%;
  right: 25%;
  bottom: 25%;
  left: 25%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_1over4 : Css.Style
inset_1over4 =
    Css.batch
        [ Css.property "top" "25%"
        , Css.property "right" "25%"
        , Css.property "bottom" "25%"
        , Css.property "left" "25%"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-2 {
  top: 0.5rem;
  right: 0.5rem;
  bottom: 0.5rem;
  left: 0.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_2 : Css.Style
inset_2 =
    Css.batch
        [ Css.property "top" "0.5rem"
        , Css.property "right" "0.5rem"
        , Css.property "bottom" "0.5rem"
        , Css.property "left" "0.5rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-20 {
  top: 5rem;
  right: 5rem;
  bottom: 5rem;
  left: 5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_20 : Css.Style
inset_20 =
    Css.batch
        [ Css.property "top" "5rem"
        , Css.property "right" "5rem"
        , Css.property "bottom" "5rem"
        , Css.property "left" "5rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-24 {
  top: 6rem;
  right: 6rem;
  bottom: 6rem;
  left: 6rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_24 : Css.Style
inset_24 =
    Css.batch
        [ Css.property "top" "6rem"
        , Css.property "right" "6rem"
        , Css.property "bottom" "6rem"
        , Css.property "left" "6rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-28 {
  top: 7rem;
  right: 7rem;
  bottom: 7rem;
  left: 7rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_28 : Css.Style
inset_28 =
    Css.batch
        [ Css.property "top" "7rem"
        , Css.property "right" "7rem"
        , Css.property "bottom" "7rem"
        , Css.property "left" "7rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-2\.5 {
  top: 0.625rem;
  right: 0.625rem;
  bottom: 0.625rem;
  left: 0.625rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_2_dot_5 : Css.Style
inset_2_dot_5 =
    Css.batch
        [ Css.property "top" "0.625rem"
        , Css.property "right" "0.625rem"
        , Css.property "bottom" "0.625rem"
        , Css.property "left" "0.625rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-2\/3 {
  top: 66.666667%;
  right: 66.666667%;
  bottom: 66.666667%;
  left: 66.666667%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_2over3 : Css.Style
inset_2over3 =
    Css.batch
        [ Css.property "top" "66.666667%"
        , Css.property "right" "66.666667%"
        , Css.property "bottom" "66.666667%"
        , Css.property "left" "66.666667%"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-2\/4 {
  top: 50%;
  right: 50%;
  bottom: 50%;
  left: 50%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_2over4 : Css.Style
inset_2over4 =
    Css.batch
        [ Css.property "top" "50%"
        , Css.property "right" "50%"
        , Css.property "bottom" "50%"
        , Css.property "left" "50%"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-3 {
  top: 0.75rem;
  right: 0.75rem;
  bottom: 0.75rem;
  left: 0.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_3 : Css.Style
inset_3 =
    Css.batch
        [ Css.property "top" "0.75rem"
        , Css.property "right" "0.75rem"
        , Css.property "bottom" "0.75rem"
        , Css.property "left" "0.75rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-32 {
  top: 8rem;
  right: 8rem;
  bottom: 8rem;
  left: 8rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_32 : Css.Style
inset_32 =
    Css.batch
        [ Css.property "top" "8rem"
        , Css.property "right" "8rem"
        , Css.property "bottom" "8rem"
        , Css.property "left" "8rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-36 {
  top: 9rem;
  right: 9rem;
  bottom: 9rem;
  left: 9rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_36 : Css.Style
inset_36 =
    Css.batch
        [ Css.property "top" "9rem"
        , Css.property "right" "9rem"
        , Css.property "bottom" "9rem"
        , Css.property "left" "9rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-3\.5 {
  top: 0.875rem;
  right: 0.875rem;
  bottom: 0.875rem;
  left: 0.875rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_3_dot_5 : Css.Style
inset_3_dot_5 =
    Css.batch
        [ Css.property "top" "0.875rem"
        , Css.property "right" "0.875rem"
        , Css.property "bottom" "0.875rem"
        , Css.property "left" "0.875rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-3\/4 {
  top: 75%;
  right: 75%;
  bottom: 75%;
  left: 75%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_3over4 : Css.Style
inset_3over4 =
    Css.batch
        [ Css.property "top" "75%"
        , Css.property "right" "75%"
        , Css.property "bottom" "75%"
        , Css.property "left" "75%"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-4 {
  top: 1rem;
  right: 1rem;
  bottom: 1rem;
  left: 1rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_4 : Css.Style
inset_4 =
    Css.batch
        [ Css.property "top" "1rem"
        , Css.property "right" "1rem"
        , Css.property "bottom" "1rem"
        , Css.property "left" "1rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-40 {
  top: 10rem;
  right: 10rem;
  bottom: 10rem;
  left: 10rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_40 : Css.Style
inset_40 =
    Css.batch
        [ Css.property "top" "10rem"
        , Css.property "right" "10rem"
        , Css.property "bottom" "10rem"
        , Css.property "left" "10rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-44 {
  top: 11rem;
  right: 11rem;
  bottom: 11rem;
  left: 11rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_44 : Css.Style
inset_44 =
    Css.batch
        [ Css.property "top" "11rem"
        , Css.property "right" "11rem"
        , Css.property "bottom" "11rem"
        , Css.property "left" "11rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-48 {
  top: 12rem;
  right: 12rem;
  bottom: 12rem;
  left: 12rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_48 : Css.Style
inset_48 =
    Css.batch
        [ Css.property "top" "12rem"
        , Css.property "right" "12rem"
        , Css.property "bottom" "12rem"
        , Css.property "left" "12rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-5 {
  top: 1.25rem;
  right: 1.25rem;
  bottom: 1.25rem;
  left: 1.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_5 : Css.Style
inset_5 =
    Css.batch
        [ Css.property "top" "1.25rem"
        , Css.property "right" "1.25rem"
        , Css.property "bottom" "1.25rem"
        , Css.property "left" "1.25rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-52 {
  top: 13rem;
  right: 13rem;
  bottom: 13rem;
  left: 13rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_52 : Css.Style
inset_52 =
    Css.batch
        [ Css.property "top" "13rem"
        , Css.property "right" "13rem"
        , Css.property "bottom" "13rem"
        , Css.property "left" "13rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-56 {
  top: 14rem;
  right: 14rem;
  bottom: 14rem;
  left: 14rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_56 : Css.Style
inset_56 =
    Css.batch
        [ Css.property "top" "14rem"
        , Css.property "right" "14rem"
        , Css.property "bottom" "14rem"
        , Css.property "left" "14rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-6 {
  top: 1.5rem;
  right: 1.5rem;
  bottom: 1.5rem;
  left: 1.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_6 : Css.Style
inset_6 =
    Css.batch
        [ Css.property "top" "1.5rem"
        , Css.property "right" "1.5rem"
        , Css.property "bottom" "1.5rem"
        , Css.property "left" "1.5rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-60 {
  top: 15rem;
  right: 15rem;
  bottom: 15rem;
  left: 15rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_60 : Css.Style
inset_60 =
    Css.batch
        [ Css.property "top" "15rem"
        , Css.property "right" "15rem"
        , Css.property "bottom" "15rem"
        , Css.property "left" "15rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-64 {
  top: 16rem;
  right: 16rem;
  bottom: 16rem;
  left: 16rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_64 : Css.Style
inset_64 =
    Css.batch
        [ Css.property "top" "16rem"
        , Css.property "right" "16rem"
        , Css.property "bottom" "16rem"
        , Css.property "left" "16rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-7 {
  top: 1.75rem;
  right: 1.75rem;
  bottom: 1.75rem;
  left: 1.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_7 : Css.Style
inset_7 =
    Css.batch
        [ Css.property "top" "1.75rem"
        , Css.property "right" "1.75rem"
        , Css.property "bottom" "1.75rem"
        , Css.property "left" "1.75rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-72 {
  top: 18rem;
  right: 18rem;
  bottom: 18rem;
  left: 18rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_72 : Css.Style
inset_72 =
    Css.batch
        [ Css.property "top" "18rem"
        , Css.property "right" "18rem"
        , Css.property "bottom" "18rem"
        , Css.property "left" "18rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-8 {
  top: 2rem;
  right: 2rem;
  bottom: 2rem;
  left: 2rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_8 : Css.Style
inset_8 =
    Css.batch
        [ Css.property "top" "2rem"
        , Css.property "right" "2rem"
        , Css.property "bottom" "2rem"
        , Css.property "left" "2rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-80 {
  top: 20rem;
  right: 20rem;
  bottom: 20rem;
  left: 20rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_80 : Css.Style
inset_80 =
    Css.batch
        [ Css.property "top" "20rem"
        , Css.property "right" "20rem"
        , Css.property "bottom" "20rem"
        , Css.property "left" "20rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-9 {
  top: 2.25rem;
  right: 2.25rem;
  bottom: 2.25rem;
  left: 2.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_9 : Css.Style
inset_9 =
    Css.batch
        [ Css.property "top" "2.25rem"
        , Css.property "right" "2.25rem"
        , Css.property "bottom" "2.25rem"
        , Css.property "left" "2.25rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-96 {
  top: 24rem;
  right: 24rem;
  bottom: 24rem;
  left: 24rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_96 : Css.Style
inset_96 =
    Css.batch
        [ Css.property "top" "24rem"
        , Css.property "right" "24rem"
        , Css.property "bottom" "24rem"
        , Css.property "left" "24rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-auto {
  top: auto;
  right: auto;
  bottom: auto;
  left: auto
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_auto : Css.Style
inset_auto =
    Css.batch
        [ Css.property "top" "auto"
        , Css.property "right" "auto"
        , Css.property "bottom" "auto"
        , Css.property "left" "auto"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-full {
  top: 100%;
  right: 100%;
  bottom: 100%;
  left: 100%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_full : Css.Style
inset_full =
    Css.batch
        [ Css.property "top" "100%"
        , Css.property "right" "100%"
        , Css.property "bottom" "100%"
        , Css.property "left" "100%"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-px {
  top: 1px;
  right: 1px;
  bottom: 1px;
  left: 1px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_px : Css.Style
inset_px =
    Css.batch
        [ Css.property "top" "1px"
        , Css.property "right" "1px"
        , Css.property "bottom" "1px"
        , Css.property "left" "1px"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-x-0 {
  right: 0px;
  left: 0px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_x_0 : Css.Style
inset_x_0 =
    Css.batch
        [ Css.property "right" "0px"
        , Css.property "left" "0px"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-x-0\.5 {
  right: 0.125rem;
  left: 0.125rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_x_0_dot_5 : Css.Style
inset_x_0_dot_5 =
    Css.batch
        [ Css.property "right" "0.125rem"
        , Css.property "left" "0.125rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-x-1 {
  right: 0.25rem;
  left: 0.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_x_1 : Css.Style
inset_x_1 =
    Css.batch
        [ Css.property "right" "0.25rem"
        , Css.property "left" "0.25rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-x-10 {
  right: 2.5rem;
  left: 2.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_x_10 : Css.Style
inset_x_10 =
    Css.batch
        [ Css.property "right" "2.5rem"
        , Css.property "left" "2.5rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-x-11 {
  right: 2.75rem;
  left: 2.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_x_11 : Css.Style
inset_x_11 =
    Css.batch
        [ Css.property "right" "2.75rem"
        , Css.property "left" "2.75rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-x-12 {
  right: 3rem;
  left: 3rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_x_12 : Css.Style
inset_x_12 =
    Css.batch
        [ Css.property "right" "3rem"
        , Css.property "left" "3rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-x-14 {
  right: 3.5rem;
  left: 3.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_x_14 : Css.Style
inset_x_14 =
    Css.batch
        [ Css.property "right" "3.5rem"
        , Css.property "left" "3.5rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-x-16 {
  right: 4rem;
  left: 4rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_x_16 : Css.Style
inset_x_16 =
    Css.batch
        [ Css.property "right" "4rem"
        , Css.property "left" "4rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-x-1\.5 {
  right: 0.375rem;
  left: 0.375rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_x_1_dot_5 : Css.Style
inset_x_1_dot_5 =
    Css.batch
        [ Css.property "right" "0.375rem"
        , Css.property "left" "0.375rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-x-1\/2 {
  right: 50%;
  left: 50%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_x_1over2 : Css.Style
inset_x_1over2 =
    Css.batch
        [ Css.property "right" "50%"
        , Css.property "left" "50%"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-x-1\/3 {
  right: 33.333333%;
  left: 33.333333%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_x_1over3 : Css.Style
inset_x_1over3 =
    Css.batch
        [ Css.property "right" "33.333333%"
        , Css.property "left" "33.333333%"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-x-1\/4 {
  right: 25%;
  left: 25%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_x_1over4 : Css.Style
inset_x_1over4 =
    Css.batch
        [ Css.property "right" "25%"
        , Css.property "left" "25%"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-x-2 {
  right: 0.5rem;
  left: 0.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_x_2 : Css.Style
inset_x_2 =
    Css.batch
        [ Css.property "right" "0.5rem"
        , Css.property "left" "0.5rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-x-20 {
  right: 5rem;
  left: 5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_x_20 : Css.Style
inset_x_20 =
    Css.batch
        [ Css.property "right" "5rem"
        , Css.property "left" "5rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-x-24 {
  right: 6rem;
  left: 6rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_x_24 : Css.Style
inset_x_24 =
    Css.batch
        [ Css.property "right" "6rem"
        , Css.property "left" "6rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-x-28 {
  right: 7rem;
  left: 7rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_x_28 : Css.Style
inset_x_28 =
    Css.batch
        [ Css.property "right" "7rem"
        , Css.property "left" "7rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-x-2\.5 {
  right: 0.625rem;
  left: 0.625rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_x_2_dot_5 : Css.Style
inset_x_2_dot_5 =
    Css.batch
        [ Css.property "right" "0.625rem"
        , Css.property "left" "0.625rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-x-2\/3 {
  right: 66.666667%;
  left: 66.666667%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_x_2over3 : Css.Style
inset_x_2over3 =
    Css.batch
        [ Css.property "right" "66.666667%"
        , Css.property "left" "66.666667%"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-x-2\/4 {
  right: 50%;
  left: 50%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_x_2over4 : Css.Style
inset_x_2over4 =
    Css.batch
        [ Css.property "right" "50%"
        , Css.property "left" "50%"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-x-3 {
  right: 0.75rem;
  left: 0.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_x_3 : Css.Style
inset_x_3 =
    Css.batch
        [ Css.property "right" "0.75rem"
        , Css.property "left" "0.75rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-x-32 {
  right: 8rem;
  left: 8rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_x_32 : Css.Style
inset_x_32 =
    Css.batch
        [ Css.property "right" "8rem"
        , Css.property "left" "8rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-x-36 {
  right: 9rem;
  left: 9rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_x_36 : Css.Style
inset_x_36 =
    Css.batch
        [ Css.property "right" "9rem"
        , Css.property "left" "9rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-x-3\.5 {
  right: 0.875rem;
  left: 0.875rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_x_3_dot_5 : Css.Style
inset_x_3_dot_5 =
    Css.batch
        [ Css.property "right" "0.875rem"
        , Css.property "left" "0.875rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-x-3\/4 {
  right: 75%;
  left: 75%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_x_3over4 : Css.Style
inset_x_3over4 =
    Css.batch
        [ Css.property "right" "75%"
        , Css.property "left" "75%"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-x-4 {
  right: 1rem;
  left: 1rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_x_4 : Css.Style
inset_x_4 =
    Css.batch
        [ Css.property "right" "1rem"
        , Css.property "left" "1rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-x-40 {
  right: 10rem;
  left: 10rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_x_40 : Css.Style
inset_x_40 =
    Css.batch
        [ Css.property "right" "10rem"
        , Css.property "left" "10rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-x-44 {
  right: 11rem;
  left: 11rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_x_44 : Css.Style
inset_x_44 =
    Css.batch
        [ Css.property "right" "11rem"
        , Css.property "left" "11rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-x-48 {
  right: 12rem;
  left: 12rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_x_48 : Css.Style
inset_x_48 =
    Css.batch
        [ Css.property "right" "12rem"
        , Css.property "left" "12rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-x-5 {
  right: 1.25rem;
  left: 1.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_x_5 : Css.Style
inset_x_5 =
    Css.batch
        [ Css.property "right" "1.25rem"
        , Css.property "left" "1.25rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-x-52 {
  right: 13rem;
  left: 13rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_x_52 : Css.Style
inset_x_52 =
    Css.batch
        [ Css.property "right" "13rem"
        , Css.property "left" "13rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-x-56 {
  right: 14rem;
  left: 14rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_x_56 : Css.Style
inset_x_56 =
    Css.batch
        [ Css.property "right" "14rem"
        , Css.property "left" "14rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-x-6 {
  right: 1.5rem;
  left: 1.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_x_6 : Css.Style
inset_x_6 =
    Css.batch
        [ Css.property "right" "1.5rem"
        , Css.property "left" "1.5rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-x-60 {
  right: 15rem;
  left: 15rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_x_60 : Css.Style
inset_x_60 =
    Css.batch
        [ Css.property "right" "15rem"
        , Css.property "left" "15rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-x-64 {
  right: 16rem;
  left: 16rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_x_64 : Css.Style
inset_x_64 =
    Css.batch
        [ Css.property "right" "16rem"
        , Css.property "left" "16rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-x-7 {
  right: 1.75rem;
  left: 1.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_x_7 : Css.Style
inset_x_7 =
    Css.batch
        [ Css.property "right" "1.75rem"
        , Css.property "left" "1.75rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-x-72 {
  right: 18rem;
  left: 18rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_x_72 : Css.Style
inset_x_72 =
    Css.batch
        [ Css.property "right" "18rem"
        , Css.property "left" "18rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-x-8 {
  right: 2rem;
  left: 2rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_x_8 : Css.Style
inset_x_8 =
    Css.batch
        [ Css.property "right" "2rem"
        , Css.property "left" "2rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-x-80 {
  right: 20rem;
  left: 20rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_x_80 : Css.Style
inset_x_80 =
    Css.batch
        [ Css.property "right" "20rem"
        , Css.property "left" "20rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-x-9 {
  right: 2.25rem;
  left: 2.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_x_9 : Css.Style
inset_x_9 =
    Css.batch
        [ Css.property "right" "2.25rem"
        , Css.property "left" "2.25rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-x-96 {
  right: 24rem;
  left: 24rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_x_96 : Css.Style
inset_x_96 =
    Css.batch
        [ Css.property "right" "24rem"
        , Css.property "left" "24rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-x-auto {
  right: auto;
  left: auto
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_x_auto : Css.Style
inset_x_auto =
    Css.batch
        [ Css.property "right" "auto"
        , Css.property "left" "auto"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-x-full {
  right: 100%;
  left: 100%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_x_full : Css.Style
inset_x_full =
    Css.batch
        [ Css.property "right" "100%"
        , Css.property "left" "100%"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-x-px {
  right: 1px;
  left: 1px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_x_px : Css.Style
inset_x_px =
    Css.batch
        [ Css.property "right" "1px"
        , Css.property "left" "1px"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-y-0 {
  top: 0px;
  bottom: 0px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_y_0 : Css.Style
inset_y_0 =
    Css.batch
        [ Css.property "top" "0px"
        , Css.property "bottom" "0px"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-y-0\.5 {
  top: 0.125rem;
  bottom: 0.125rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_y_0_dot_5 : Css.Style
inset_y_0_dot_5 =
    Css.batch
        [ Css.property "top" "0.125rem"
        , Css.property "bottom" "0.125rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-y-1 {
  top: 0.25rem;
  bottom: 0.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_y_1 : Css.Style
inset_y_1 =
    Css.batch
        [ Css.property "top" "0.25rem"
        , Css.property "bottom" "0.25rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-y-10 {
  top: 2.5rem;
  bottom: 2.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_y_10 : Css.Style
inset_y_10 =
    Css.batch
        [ Css.property "top" "2.5rem"
        , Css.property "bottom" "2.5rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-y-11 {
  top: 2.75rem;
  bottom: 2.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_y_11 : Css.Style
inset_y_11 =
    Css.batch
        [ Css.property "top" "2.75rem"
        , Css.property "bottom" "2.75rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-y-12 {
  top: 3rem;
  bottom: 3rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_y_12 : Css.Style
inset_y_12 =
    Css.batch
        [ Css.property "top" "3rem"
        , Css.property "bottom" "3rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-y-14 {
  top: 3.5rem;
  bottom: 3.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_y_14 : Css.Style
inset_y_14 =
    Css.batch
        [ Css.property "top" "3.5rem"
        , Css.property "bottom" "3.5rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-y-16 {
  top: 4rem;
  bottom: 4rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_y_16 : Css.Style
inset_y_16 =
    Css.batch
        [ Css.property "top" "4rem"
        , Css.property "bottom" "4rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-y-1\.5 {
  top: 0.375rem;
  bottom: 0.375rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_y_1_dot_5 : Css.Style
inset_y_1_dot_5 =
    Css.batch
        [ Css.property "top" "0.375rem"
        , Css.property "bottom" "0.375rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-y-1\/2 {
  top: 50%;
  bottom: 50%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_y_1over2 : Css.Style
inset_y_1over2 =
    Css.batch
        [ Css.property "top" "50%"
        , Css.property "bottom" "50%"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-y-1\/3 {
  top: 33.333333%;
  bottom: 33.333333%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_y_1over3 : Css.Style
inset_y_1over3 =
    Css.batch
        [ Css.property "top" "33.333333%"
        , Css.property "bottom" "33.333333%"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-y-1\/4 {
  top: 25%;
  bottom: 25%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_y_1over4 : Css.Style
inset_y_1over4 =
    Css.batch
        [ Css.property "top" "25%"
        , Css.property "bottom" "25%"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-y-2 {
  top: 0.5rem;
  bottom: 0.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_y_2 : Css.Style
inset_y_2 =
    Css.batch
        [ Css.property "top" "0.5rem"
        , Css.property "bottom" "0.5rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-y-20 {
  top: 5rem;
  bottom: 5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_y_20 : Css.Style
inset_y_20 =
    Css.batch
        [ Css.property "top" "5rem"
        , Css.property "bottom" "5rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-y-24 {
  top: 6rem;
  bottom: 6rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_y_24 : Css.Style
inset_y_24 =
    Css.batch
        [ Css.property "top" "6rem"
        , Css.property "bottom" "6rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-y-28 {
  top: 7rem;
  bottom: 7rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_y_28 : Css.Style
inset_y_28 =
    Css.batch
        [ Css.property "top" "7rem"
        , Css.property "bottom" "7rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-y-2\.5 {
  top: 0.625rem;
  bottom: 0.625rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_y_2_dot_5 : Css.Style
inset_y_2_dot_5 =
    Css.batch
        [ Css.property "top" "0.625rem"
        , Css.property "bottom" "0.625rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-y-2\/3 {
  top: 66.666667%;
  bottom: 66.666667%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_y_2over3 : Css.Style
inset_y_2over3 =
    Css.batch
        [ Css.property "top" "66.666667%"
        , Css.property "bottom" "66.666667%"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-y-2\/4 {
  top: 50%;
  bottom: 50%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_y_2over4 : Css.Style
inset_y_2over4 =
    Css.batch
        [ Css.property "top" "50%"
        , Css.property "bottom" "50%"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-y-3 {
  top: 0.75rem;
  bottom: 0.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_y_3 : Css.Style
inset_y_3 =
    Css.batch
        [ Css.property "top" "0.75rem"
        , Css.property "bottom" "0.75rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-y-32 {
  top: 8rem;
  bottom: 8rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_y_32 : Css.Style
inset_y_32 =
    Css.batch
        [ Css.property "top" "8rem"
        , Css.property "bottom" "8rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-y-36 {
  top: 9rem;
  bottom: 9rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_y_36 : Css.Style
inset_y_36 =
    Css.batch
        [ Css.property "top" "9rem"
        , Css.property "bottom" "9rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-y-3\.5 {
  top: 0.875rem;
  bottom: 0.875rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_y_3_dot_5 : Css.Style
inset_y_3_dot_5 =
    Css.batch
        [ Css.property "top" "0.875rem"
        , Css.property "bottom" "0.875rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-y-3\/4 {
  top: 75%;
  bottom: 75%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_y_3over4 : Css.Style
inset_y_3over4 =
    Css.batch
        [ Css.property "top" "75%"
        , Css.property "bottom" "75%"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-y-4 {
  top: 1rem;
  bottom: 1rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_y_4 : Css.Style
inset_y_4 =
    Css.batch
        [ Css.property "top" "1rem"
        , Css.property "bottom" "1rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-y-40 {
  top: 10rem;
  bottom: 10rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_y_40 : Css.Style
inset_y_40 =
    Css.batch
        [ Css.property "top" "10rem"
        , Css.property "bottom" "10rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-y-44 {
  top: 11rem;
  bottom: 11rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_y_44 : Css.Style
inset_y_44 =
    Css.batch
        [ Css.property "top" "11rem"
        , Css.property "bottom" "11rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-y-48 {
  top: 12rem;
  bottom: 12rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_y_48 : Css.Style
inset_y_48 =
    Css.batch
        [ Css.property "top" "12rem"
        , Css.property "bottom" "12rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-y-5 {
  top: 1.25rem;
  bottom: 1.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_y_5 : Css.Style
inset_y_5 =
    Css.batch
        [ Css.property "top" "1.25rem"
        , Css.property "bottom" "1.25rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-y-52 {
  top: 13rem;
  bottom: 13rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_y_52 : Css.Style
inset_y_52 =
    Css.batch
        [ Css.property "top" "13rem"
        , Css.property "bottom" "13rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-y-56 {
  top: 14rem;
  bottom: 14rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_y_56 : Css.Style
inset_y_56 =
    Css.batch
        [ Css.property "top" "14rem"
        , Css.property "bottom" "14rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-y-6 {
  top: 1.5rem;
  bottom: 1.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_y_6 : Css.Style
inset_y_6 =
    Css.batch
        [ Css.property "top" "1.5rem"
        , Css.property "bottom" "1.5rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-y-60 {
  top: 15rem;
  bottom: 15rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_y_60 : Css.Style
inset_y_60 =
    Css.batch
        [ Css.property "top" "15rem"
        , Css.property "bottom" "15rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-y-64 {
  top: 16rem;
  bottom: 16rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_y_64 : Css.Style
inset_y_64 =
    Css.batch
        [ Css.property "top" "16rem"
        , Css.property "bottom" "16rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-y-7 {
  top: 1.75rem;
  bottom: 1.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_y_7 : Css.Style
inset_y_7 =
    Css.batch
        [ Css.property "top" "1.75rem"
        , Css.property "bottom" "1.75rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-y-72 {
  top: 18rem;
  bottom: 18rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_y_72 : Css.Style
inset_y_72 =
    Css.batch
        [ Css.property "top" "18rem"
        , Css.property "bottom" "18rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-y-8 {
  top: 2rem;
  bottom: 2rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_y_8 : Css.Style
inset_y_8 =
    Css.batch
        [ Css.property "top" "2rem"
        , Css.property "bottom" "2rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-y-80 {
  top: 20rem;
  bottom: 20rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_y_80 : Css.Style
inset_y_80 =
    Css.batch
        [ Css.property "top" "20rem"
        , Css.property "bottom" "20rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-y-9 {
  top: 2.25rem;
  bottom: 2.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_y_9 : Css.Style
inset_y_9 =
    Css.batch
        [ Css.property "top" "2.25rem"
        , Css.property "bottom" "2.25rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-y-96 {
  top: 24rem;
  bottom: 24rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_y_96 : Css.Style
inset_y_96 =
    Css.batch
        [ Css.property "top" "24rem"
        , Css.property "bottom" "24rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-y-auto {
  top: auto;
  bottom: auto
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_y_auto : Css.Style
inset_y_auto =
    Css.batch
        [ Css.property "top" "auto"
        , Css.property "bottom" "auto"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-y-full {
  top: 100%;
  bottom: 100%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_y_full : Css.Style
inset_y_full =
    Css.batch
        [ Css.property "top" "100%"
        , Css.property "bottom" "100%"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-y-px {
  top: 1px;
  bottom: 1px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_y_px : Css.Style
inset_y_px =
    Css.batch
        [ Css.property "top" "1px"
        , Css.property "bottom" "1px"
        ]


{-| This class has the effect of following css declaration:

```css
.invert {
  --tw-invert: invert(100%)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
invert : Css.Style
invert =
    Css.property "--tw-invert" "invert(100%)"


{-| This class has the effect of following css declaration:

```css
.invert-0 {
  --tw-invert: invert(0)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
invert_0 : Css.Style
invert_0 =
    Css.property "--tw-invert" "invert(0)"


{-| This class has the effect of following css declaration:

```css
.invisible {
  visibility: hidden
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
invisible : Css.Style
invisible =
    Css.property "visibility" "hidden"


{-| This class has the effect of following css declaration:

```css
.isolate {
  isolation: isolate
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
isolate : Css.Style
isolate =
    Css.property "isolation" "isolate"


{-| This class has the effect of following css declaration:

```css
.isolation-auto {
  isolation: auto
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
isolation_auto : Css.Style
isolation_auto =
    Css.property "isolation" "auto"


{-| This class has the effect of following css declaration:

```css
.italic {
  font-style: italic
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
italic : Css.Style
italic =
    Css.property "font-style" "italic"


{-| This class has the effect of following css declaration:

```css
.items-baseline {
  align-items: baseline
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
items_baseline : Css.Style
items_baseline =
    Css.property "align-items" "baseline"


{-| This class has the effect of following css declaration:

```css
.items-center {
  align-items: center
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
items_center : Css.Style
items_center =
    Css.property "align-items" "center"


{-| This class has the effect of following css declaration:

```css
.items-end {
  align-items: flex-end
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
items_end : Css.Style
items_end =
    Css.property "align-items" "flex-end"


{-| This class has the effect of following css declaration:

```css
.items-start {
  align-items: flex-start
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
items_start : Css.Style
items_start =
    Css.property "align-items" "flex-start"


{-| This class has the effect of following css declaration:

```css
.items-stretch {
  align-items: stretch
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
items_stretch : Css.Style
items_stretch =
    Css.property "align-items" "stretch"


{-| This class has the effect of following css declaration:

```css
.justify-around {
  justify-content: space-around
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
justify_around : Css.Style
justify_around =
    Css.property "justify-content" "space-around"


{-| This class has the effect of following css declaration:

```css
.justify-between {
  justify-content: space-between
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
justify_between : Css.Style
justify_between =
    Css.property "justify-content" "space-between"


{-| This class has the effect of following css declaration:

```css
.justify-center {
  justify-content: center
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
justify_center : Css.Style
justify_center =
    Css.property "justify-content" "center"


{-| This class has the effect of following css declaration:

```css
.justify-end {
  justify-content: flex-end
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
justify_end : Css.Style
justify_end =
    Css.property "justify-content" "flex-end"


{-| This class has the effect of following css declaration:

```css
.justify-evenly {
  justify-content: space-evenly
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
justify_evenly : Css.Style
justify_evenly =
    Css.property "justify-content" "space-evenly"


{-| This class has the effect of following css declaration:

```css
.justify-items-center {
  justify-items: center
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
justify_items_center : Css.Style
justify_items_center =
    Css.property "justify-items" "center"


{-| This class has the effect of following css declaration:

```css
.justify-items-end {
  justify-items: end
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
justify_items_end : Css.Style
justify_items_end =
    Css.property "justify-items" "end"


{-| This class has the effect of following css declaration:

```css
.justify-items-start {
  justify-items: start
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
justify_items_start : Css.Style
justify_items_start =
    Css.property "justify-items" "start"


{-| This class has the effect of following css declaration:

```css
.justify-items-stretch {
  justify-items: stretch
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
justify_items_stretch : Css.Style
justify_items_stretch =
    Css.property "justify-items" "stretch"


{-| This class has the effect of following css declaration:

```css
.justify-self-auto {
  justify-self: auto
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
justify_self_auto : Css.Style
justify_self_auto =
    Css.property "justify-self" "auto"


{-| This class has the effect of following css declaration:

```css
.justify-self-center {
  justify-self: center
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
justify_self_center : Css.Style
justify_self_center =
    Css.property "justify-self" "center"


{-| This class has the effect of following css declaration:

```css
.justify-self-end {
  justify-self: end
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
justify_self_end : Css.Style
justify_self_end =
    Css.property "justify-self" "end"


{-| This class has the effect of following css declaration:

```css
.justify-self-start {
  justify-self: start
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
justify_self_start : Css.Style
justify_self_start =
    Css.property "justify-self" "start"


{-| This class has the effect of following css declaration:

```css
.justify-self-stretch {
  justify-self: stretch
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
justify_self_stretch : Css.Style
justify_self_stretch =
    Css.property "justify-self" "stretch"


{-| This class has the effect of following css declaration:

```css
.justify-start {
  justify-content: flex-start
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
justify_start : Css.Style
justify_start =
    Css.property "justify-content" "flex-start"


{-| This class has the effect of following css declaration:

```css
.leading-10 {
  line-height: 2.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
leading_10 : Css.Style
leading_10 =
    Css.property "line-height" "2.5rem"


{-| This class has the effect of following css declaration:

```css
.leading-3 {
  line-height: .75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
leading_3 : Css.Style
leading_3 =
    Css.property "line-height" ".75rem"


{-| This class has the effect of following css declaration:

```css
.leading-4 {
  line-height: 1rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
leading_4 : Css.Style
leading_4 =
    Css.property "line-height" "1rem"


{-| This class has the effect of following css declaration:

```css
.leading-5 {
  line-height: 1.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
leading_5 : Css.Style
leading_5 =
    Css.property "line-height" "1.25rem"


{-| This class has the effect of following css declaration:

```css
.leading-6 {
  line-height: 1.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
leading_6 : Css.Style
leading_6 =
    Css.property "line-height" "1.5rem"


{-| This class has the effect of following css declaration:

```css
.leading-7 {
  line-height: 1.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
leading_7 : Css.Style
leading_7 =
    Css.property "line-height" "1.75rem"


{-| This class has the effect of following css declaration:

```css
.leading-8 {
  line-height: 2rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
leading_8 : Css.Style
leading_8 =
    Css.property "line-height" "2rem"


{-| This class has the effect of following css declaration:

```css
.leading-9 {
  line-height: 2.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
leading_9 : Css.Style
leading_9 =
    Css.property "line-height" "2.25rem"


{-| This class has the effect of following css declaration:

```css
.leading-loose {
  line-height: 2
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
leading_loose : Css.Style
leading_loose =
    Css.property "line-height" "2"


{-| This class has the effect of following css declaration:

```css
.leading-none {
  line-height: 1
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
leading_none : Css.Style
leading_none =
    Css.property "line-height" "1"


{-| This class has the effect of following css declaration:

```css
.leading-normal {
  line-height: 1.5
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
leading_normal : Css.Style
leading_normal =
    Css.property "line-height" "1.5"


{-| This class has the effect of following css declaration:

```css
.leading-relaxed {
  line-height: 1.625
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
leading_relaxed : Css.Style
leading_relaxed =
    Css.property "line-height" "1.625"


{-| This class has the effect of following css declaration:

```css
.leading-snug {
  line-height: 1.375
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
leading_snug : Css.Style
leading_snug =
    Css.property "line-height" "1.375"


{-| This class has the effect of following css declaration:

```css
.leading-tight {
  line-height: 1.25
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
leading_tight : Css.Style
leading_tight =
    Css.property "line-height" "1.25"


{-| This class has the effect of following css declaration:

```css
.left-0 {
  left: 0px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
left_0 : Css.Style
left_0 =
    Css.property "left" "0px"


{-| This class has the effect of following css declaration:

```css
.left-0\.5 {
  left: 0.125rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
left_0_dot_5 : Css.Style
left_0_dot_5 =
    Css.property "left" "0.125rem"


{-| This class has the effect of following css declaration:

```css
.left-1 {
  left: 0.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
left_1 : Css.Style
left_1 =
    Css.property "left" "0.25rem"


{-| This class has the effect of following css declaration:

```css
.left-10 {
  left: 2.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
left_10 : Css.Style
left_10 =
    Css.property "left" "2.5rem"


{-| This class has the effect of following css declaration:

```css
.left-11 {
  left: 2.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
left_11 : Css.Style
left_11 =
    Css.property "left" "2.75rem"


{-| This class has the effect of following css declaration:

```css
.left-12 {
  left: 3rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
left_12 : Css.Style
left_12 =
    Css.property "left" "3rem"


{-| This class has the effect of following css declaration:

```css
.left-14 {
  left: 3.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
left_14 : Css.Style
left_14 =
    Css.property "left" "3.5rem"


{-| This class has the effect of following css declaration:

```css
.left-16 {
  left: 4rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
left_16 : Css.Style
left_16 =
    Css.property "left" "4rem"


{-| This class has the effect of following css declaration:

```css
.left-1\.5 {
  left: 0.375rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
left_1_dot_5 : Css.Style
left_1_dot_5 =
    Css.property "left" "0.375rem"


{-| This class has the effect of following css declaration:

```css
.left-1\/2 {
  left: 50%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
left_1over2 : Css.Style
left_1over2 =
    Css.property "left" "50%"


{-| This class has the effect of following css declaration:

```css
.left-1\/3 {
  left: 33.333333%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
left_1over3 : Css.Style
left_1over3 =
    Css.property "left" "33.333333%"


{-| This class has the effect of following css declaration:

```css
.left-1\/4 {
  left: 25%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
left_1over4 : Css.Style
left_1over4 =
    Css.property "left" "25%"


{-| This class has the effect of following css declaration:

```css
.left-2 {
  left: 0.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
left_2 : Css.Style
left_2 =
    Css.property "left" "0.5rem"


{-| This class has the effect of following css declaration:

```css
.left-20 {
  left: 5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
left_20 : Css.Style
left_20 =
    Css.property "left" "5rem"


{-| This class has the effect of following css declaration:

```css
.left-24 {
  left: 6rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
left_24 : Css.Style
left_24 =
    Css.property "left" "6rem"


{-| This class has the effect of following css declaration:

```css
.left-28 {
  left: 7rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
left_28 : Css.Style
left_28 =
    Css.property "left" "7rem"


{-| This class has the effect of following css declaration:

```css
.left-2\.5 {
  left: 0.625rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
left_2_dot_5 : Css.Style
left_2_dot_5 =
    Css.property "left" "0.625rem"


{-| This class has the effect of following css declaration:

```css
.left-2\/3 {
  left: 66.666667%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
left_2over3 : Css.Style
left_2over3 =
    Css.property "left" "66.666667%"


{-| This class has the effect of following css declaration:

```css
.left-2\/4 {
  left: 50%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
left_2over4 : Css.Style
left_2over4 =
    Css.property "left" "50%"


{-| This class has the effect of following css declaration:

```css
.left-3 {
  left: 0.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
left_3 : Css.Style
left_3 =
    Css.property "left" "0.75rem"


{-| This class has the effect of following css declaration:

```css
.left-32 {
  left: 8rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
left_32 : Css.Style
left_32 =
    Css.property "left" "8rem"


{-| This class has the effect of following css declaration:

```css
.left-36 {
  left: 9rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
left_36 : Css.Style
left_36 =
    Css.property "left" "9rem"


{-| This class has the effect of following css declaration:

```css
.left-3\.5 {
  left: 0.875rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
left_3_dot_5 : Css.Style
left_3_dot_5 =
    Css.property "left" "0.875rem"


{-| This class has the effect of following css declaration:

```css
.left-3\/4 {
  left: 75%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
left_3over4 : Css.Style
left_3over4 =
    Css.property "left" "75%"


{-| This class has the effect of following css declaration:

```css
.left-4 {
  left: 1rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
left_4 : Css.Style
left_4 =
    Css.property "left" "1rem"


{-| This class has the effect of following css declaration:

```css
.left-40 {
  left: 10rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
left_40 : Css.Style
left_40 =
    Css.property "left" "10rem"


{-| This class has the effect of following css declaration:

```css
.left-44 {
  left: 11rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
left_44 : Css.Style
left_44 =
    Css.property "left" "11rem"


{-| This class has the effect of following css declaration:

```css
.left-48 {
  left: 12rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
left_48 : Css.Style
left_48 =
    Css.property "left" "12rem"


{-| This class has the effect of following css declaration:

```css
.left-5 {
  left: 1.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
left_5 : Css.Style
left_5 =
    Css.property "left" "1.25rem"


{-| This class has the effect of following css declaration:

```css
.left-52 {
  left: 13rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
left_52 : Css.Style
left_52 =
    Css.property "left" "13rem"


{-| This class has the effect of following css declaration:

```css
.left-56 {
  left: 14rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
left_56 : Css.Style
left_56 =
    Css.property "left" "14rem"


{-| This class has the effect of following css declaration:

```css
.left-6 {
  left: 1.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
left_6 : Css.Style
left_6 =
    Css.property "left" "1.5rem"


{-| This class has the effect of following css declaration:

```css
.left-60 {
  left: 15rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
left_60 : Css.Style
left_60 =
    Css.property "left" "15rem"


{-| This class has the effect of following css declaration:

```css
.left-64 {
  left: 16rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
left_64 : Css.Style
left_64 =
    Css.property "left" "16rem"


{-| This class has the effect of following css declaration:

```css
.left-7 {
  left: 1.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
left_7 : Css.Style
left_7 =
    Css.property "left" "1.75rem"


{-| This class has the effect of following css declaration:

```css
.left-72 {
  left: 18rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
left_72 : Css.Style
left_72 =
    Css.property "left" "18rem"


{-| This class has the effect of following css declaration:

```css
.left-8 {
  left: 2rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
left_8 : Css.Style
left_8 =
    Css.property "left" "2rem"


{-| This class has the effect of following css declaration:

```css
.left-80 {
  left: 20rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
left_80 : Css.Style
left_80 =
    Css.property "left" "20rem"


{-| This class has the effect of following css declaration:

```css
.left-9 {
  left: 2.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
left_9 : Css.Style
left_9 =
    Css.property "left" "2.25rem"


{-| This class has the effect of following css declaration:

```css
.left-96 {
  left: 24rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
left_96 : Css.Style
left_96 =
    Css.property "left" "24rem"


{-| This class has the effect of following css declaration:

```css
.left-auto {
  left: auto
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
left_auto : Css.Style
left_auto =
    Css.property "left" "auto"


{-| This class has the effect of following css declaration:

```css
.left-full {
  left: 100%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
left_full : Css.Style
left_full =
    Css.property "left" "100%"


{-| This class has the effect of following css declaration:

```css
.left-px {
  left: 1px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
left_px : Css.Style
left_px =
    Css.property "left" "1px"


{-| This class has the effect of following css declaration:

```css
.line-through {
  text-decoration: line-through
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
line_through : Css.Style
line_through =
    Css.property "text-decoration" "line-through"


{-| This class combines the effects of following css declarations:

```css
.ordinal, .slashed-zero, .lining-nums, .oldstyle-nums, .proportional-nums, .tabular-nums, .diagonal-fractions, .stacked-fractions {
  --tw-ordinal: var(--tw-empty,/*!*/ /*!*/);
  --tw-slashed-zero: var(--tw-empty,/*!*/ /*!*/);
  --tw-numeric-figure: var(--tw-empty,/*!*/ /*!*/);
  --tw-numeric-spacing: var(--tw-empty,/*!*/ /*!*/);
  --tw-numeric-fraction: var(--tw-empty,/*!*/ /*!*/);
  font-variant-numeric: var(--tw-ordinal) var(--tw-slashed-zero) var(--tw-numeric-figure) var(--tw-numeric-spacing) var(--tw-numeric-fraction)
}

.lining-nums {
  --tw-numeric-figure: lining-nums
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
lining_nums : Css.Style
lining_nums =
    Css.batch
        [ Css.property "--tw-ordinal" "var(--tw-empty,/*!*/ /*!*/)"
        , Css.property "--tw-slashed-zero" "var(--tw-empty,/*!*/ /*!*/)"
        , Css.property "--tw-numeric-figure" "var(--tw-empty,/*!*/ /*!*/)"
        , Css.property "--tw-numeric-spacing" "var(--tw-empty,/*!*/ /*!*/)"
        , Css.property "--tw-numeric-fraction" "var(--tw-empty,/*!*/ /*!*/)"
        , Css.property "font-variant-numeric" "var(--tw-ordinal) var(--tw-slashed-zero) var(--tw-numeric-figure) var(--tw-numeric-spacing) var(--tw-numeric-fraction)"
        , Css.property "--tw-numeric-figure" "lining-nums"
        ]


{-| This class has the effect of following css declaration:

```css
.list-decimal {
  list-style-type: decimal
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
list_decimal : Css.Style
list_decimal =
    Css.property "list-style-type" "decimal"


{-| This class has the effect of following css declaration:

```css
.list-disc {
  list-style-type: disc
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
list_disc : Css.Style
list_disc =
    Css.property "list-style-type" "disc"


{-| This class has the effect of following css declaration:

```css
.list-inside {
  list-style-position: inside
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
list_inside : Css.Style
list_inside =
    Css.property "list-style-position" "inside"


{-| This class has the effect of following css declaration:

```css
.list-item {
  display: list-item
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
list_item : Css.Style
list_item =
    Css.property "display" "list-item"


{-| This class has the effect of following css declaration:

```css
.list-none {
  list-style-type: none
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
list_none : Css.Style
list_none =
    Css.property "list-style-type" "none"


{-| This class has the effect of following css declaration:

```css
.list-outside {
  list-style-position: outside
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
list_outside : Css.Style
list_outside =
    Css.property "list-style-position" "outside"


{-| This class has the effect of following css declaration:

```css
.lowercase {
  text-transform: lowercase
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
lowercase : Css.Style
lowercase =
    Css.property "text-transform" "lowercase"


{-| This class has the effect of following css declaration:

```css
.m-0 {
  margin: 0px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
m_0 : Css.Style
m_0 =
    Css.property "margin" "0px"


{-| This class has the effect of following css declaration:

```css
.m-0\.5 {
  margin: 0.125rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
m_0_dot_5 : Css.Style
m_0_dot_5 =
    Css.property "margin" "0.125rem"


{-| This class has the effect of following css declaration:

```css
.m-1 {
  margin: 0.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
m_1 : Css.Style
m_1 =
    Css.property "margin" "0.25rem"


{-| This class has the effect of following css declaration:

```css
.m-10 {
  margin: 2.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
m_10 : Css.Style
m_10 =
    Css.property "margin" "2.5rem"


{-| This class has the effect of following css declaration:

```css
.m-11 {
  margin: 2.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
m_11 : Css.Style
m_11 =
    Css.property "margin" "2.75rem"


{-| This class has the effect of following css declaration:

```css
.m-12 {
  margin: 3rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
m_12 : Css.Style
m_12 =
    Css.property "margin" "3rem"


{-| This class has the effect of following css declaration:

```css
.m-14 {
  margin: 3.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
m_14 : Css.Style
m_14 =
    Css.property "margin" "3.5rem"


{-| This class has the effect of following css declaration:

```css
.m-16 {
  margin: 4rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
m_16 : Css.Style
m_16 =
    Css.property "margin" "4rem"


{-| This class has the effect of following css declaration:

```css
.m-1\.5 {
  margin: 0.375rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
m_1_dot_5 : Css.Style
m_1_dot_5 =
    Css.property "margin" "0.375rem"


{-| This class has the effect of following css declaration:

```css
.m-2 {
  margin: 0.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
m_2 : Css.Style
m_2 =
    Css.property "margin" "0.5rem"


{-| This class has the effect of following css declaration:

```css
.m-20 {
  margin: 5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
m_20 : Css.Style
m_20 =
    Css.property "margin" "5rem"


{-| This class has the effect of following css declaration:

```css
.m-24 {
  margin: 6rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
m_24 : Css.Style
m_24 =
    Css.property "margin" "6rem"


{-| This class has the effect of following css declaration:

```css
.m-28 {
  margin: 7rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
m_28 : Css.Style
m_28 =
    Css.property "margin" "7rem"


{-| This class has the effect of following css declaration:

```css
.m-2\.5 {
  margin: 0.625rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
m_2_dot_5 : Css.Style
m_2_dot_5 =
    Css.property "margin" "0.625rem"


{-| This class has the effect of following css declaration:

```css
.m-3 {
  margin: 0.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
m_3 : Css.Style
m_3 =
    Css.property "margin" "0.75rem"


{-| This class has the effect of following css declaration:

```css
.m-32 {
  margin: 8rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
m_32 : Css.Style
m_32 =
    Css.property "margin" "8rem"


{-| This class has the effect of following css declaration:

```css
.m-36 {
  margin: 9rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
m_36 : Css.Style
m_36 =
    Css.property "margin" "9rem"


{-| This class has the effect of following css declaration:

```css
.m-3\.5 {
  margin: 0.875rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
m_3_dot_5 : Css.Style
m_3_dot_5 =
    Css.property "margin" "0.875rem"


{-| This class has the effect of following css declaration:

```css
.m-4 {
  margin: 1rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
m_4 : Css.Style
m_4 =
    Css.property "margin" "1rem"


{-| This class has the effect of following css declaration:

```css
.m-40 {
  margin: 10rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
m_40 : Css.Style
m_40 =
    Css.property "margin" "10rem"


{-| This class has the effect of following css declaration:

```css
.m-44 {
  margin: 11rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
m_44 : Css.Style
m_44 =
    Css.property "margin" "11rem"


{-| This class has the effect of following css declaration:

```css
.m-48 {
  margin: 12rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
m_48 : Css.Style
m_48 =
    Css.property "margin" "12rem"


{-| This class has the effect of following css declaration:

```css
.m-5 {
  margin: 1.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
m_5 : Css.Style
m_5 =
    Css.property "margin" "1.25rem"


{-| This class has the effect of following css declaration:

```css
.m-52 {
  margin: 13rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
m_52 : Css.Style
m_52 =
    Css.property "margin" "13rem"


{-| This class has the effect of following css declaration:

```css
.m-56 {
  margin: 14rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
m_56 : Css.Style
m_56 =
    Css.property "margin" "14rem"


{-| This class has the effect of following css declaration:

```css
.m-6 {
  margin: 1.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
m_6 : Css.Style
m_6 =
    Css.property "margin" "1.5rem"


{-| This class has the effect of following css declaration:

```css
.m-60 {
  margin: 15rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
m_60 : Css.Style
m_60 =
    Css.property "margin" "15rem"


{-| This class has the effect of following css declaration:

```css
.m-64 {
  margin: 16rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
m_64 : Css.Style
m_64 =
    Css.property "margin" "16rem"


{-| This class has the effect of following css declaration:

```css
.m-7 {
  margin: 1.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
m_7 : Css.Style
m_7 =
    Css.property "margin" "1.75rem"


{-| This class has the effect of following css declaration:

```css
.m-72 {
  margin: 18rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
m_72 : Css.Style
m_72 =
    Css.property "margin" "18rem"


{-| This class has the effect of following css declaration:

```css
.m-8 {
  margin: 2rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
m_8 : Css.Style
m_8 =
    Css.property "margin" "2rem"


{-| This class has the effect of following css declaration:

```css
.m-80 {
  margin: 20rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
m_80 : Css.Style
m_80 =
    Css.property "margin" "20rem"


{-| This class has the effect of following css declaration:

```css
.m-9 {
  margin: 2.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
m_9 : Css.Style
m_9 =
    Css.property "margin" "2.25rem"


{-| This class has the effect of following css declaration:

```css
.m-96 {
  margin: 24rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
m_96 : Css.Style
m_96 =
    Css.property "margin" "24rem"


{-| This class has the effect of following css declaration:

```css
.m-auto {
  margin: auto
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
m_auto : Css.Style
m_auto =
    Css.property "margin" "auto"


{-| This class has the effect of following css declaration:

```css
.m-px {
  margin: 1px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
m_px : Css.Style
m_px =
    Css.property "margin" "1px"


{-| This class has the effect of following css declaration:

```css
.max-h-0 {
  max-height: 0px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
max_h_0 : Css.Style
max_h_0 =
    Css.property "max-height" "0px"


{-| This class has the effect of following css declaration:

```css
.max-h-0\.5 {
  max-height: 0.125rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
max_h_0_dot_5 : Css.Style
max_h_0_dot_5 =
    Css.property "max-height" "0.125rem"


{-| This class has the effect of following css declaration:

```css
.max-h-1 {
  max-height: 0.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
max_h_1 : Css.Style
max_h_1 =
    Css.property "max-height" "0.25rem"


{-| This class has the effect of following css declaration:

```css
.max-h-10 {
  max-height: 2.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
max_h_10 : Css.Style
max_h_10 =
    Css.property "max-height" "2.5rem"


{-| This class has the effect of following css declaration:

```css
.max-h-11 {
  max-height: 2.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
max_h_11 : Css.Style
max_h_11 =
    Css.property "max-height" "2.75rem"


{-| This class has the effect of following css declaration:

```css
.max-h-12 {
  max-height: 3rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
max_h_12 : Css.Style
max_h_12 =
    Css.property "max-height" "3rem"


{-| This class has the effect of following css declaration:

```css
.max-h-14 {
  max-height: 3.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
max_h_14 : Css.Style
max_h_14 =
    Css.property "max-height" "3.5rem"


{-| This class has the effect of following css declaration:

```css
.max-h-16 {
  max-height: 4rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
max_h_16 : Css.Style
max_h_16 =
    Css.property "max-height" "4rem"


{-| This class has the effect of following css declaration:

```css
.max-h-1\.5 {
  max-height: 0.375rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
max_h_1_dot_5 : Css.Style
max_h_1_dot_5 =
    Css.property "max-height" "0.375rem"


{-| This class has the effect of following css declaration:

```css
.max-h-2 {
  max-height: 0.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
max_h_2 : Css.Style
max_h_2 =
    Css.property "max-height" "0.5rem"


{-| This class has the effect of following css declaration:

```css
.max-h-20 {
  max-height: 5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
max_h_20 : Css.Style
max_h_20 =
    Css.property "max-height" "5rem"


{-| This class has the effect of following css declaration:

```css
.max-h-24 {
  max-height: 6rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
max_h_24 : Css.Style
max_h_24 =
    Css.property "max-height" "6rem"


{-| This class has the effect of following css declaration:

```css
.max-h-28 {
  max-height: 7rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
max_h_28 : Css.Style
max_h_28 =
    Css.property "max-height" "7rem"


{-| This class has the effect of following css declaration:

```css
.max-h-2\.5 {
  max-height: 0.625rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
max_h_2_dot_5 : Css.Style
max_h_2_dot_5 =
    Css.property "max-height" "0.625rem"


{-| This class has the effect of following css declaration:

```css
.max-h-3 {
  max-height: 0.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
max_h_3 : Css.Style
max_h_3 =
    Css.property "max-height" "0.75rem"


{-| This class has the effect of following css declaration:

```css
.max-h-32 {
  max-height: 8rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
max_h_32 : Css.Style
max_h_32 =
    Css.property "max-height" "8rem"


{-| This class has the effect of following css declaration:

```css
.max-h-36 {
  max-height: 9rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
max_h_36 : Css.Style
max_h_36 =
    Css.property "max-height" "9rem"


{-| This class has the effect of following css declaration:

```css
.max-h-3\.5 {
  max-height: 0.875rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
max_h_3_dot_5 : Css.Style
max_h_3_dot_5 =
    Css.property "max-height" "0.875rem"


{-| This class has the effect of following css declaration:

```css
.max-h-4 {
  max-height: 1rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
max_h_4 : Css.Style
max_h_4 =
    Css.property "max-height" "1rem"


{-| This class has the effect of following css declaration:

```css
.max-h-40 {
  max-height: 10rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
max_h_40 : Css.Style
max_h_40 =
    Css.property "max-height" "10rem"


{-| This class has the effect of following css declaration:

```css
.max-h-44 {
  max-height: 11rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
max_h_44 : Css.Style
max_h_44 =
    Css.property "max-height" "11rem"


{-| This class has the effect of following css declaration:

```css
.max-h-48 {
  max-height: 12rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
max_h_48 : Css.Style
max_h_48 =
    Css.property "max-height" "12rem"


{-| This class has the effect of following css declaration:

```css
.max-h-5 {
  max-height: 1.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
max_h_5 : Css.Style
max_h_5 =
    Css.property "max-height" "1.25rem"


{-| This class has the effect of following css declaration:

```css
.max-h-52 {
  max-height: 13rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
max_h_52 : Css.Style
max_h_52 =
    Css.property "max-height" "13rem"


{-| This class has the effect of following css declaration:

```css
.max-h-56 {
  max-height: 14rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
max_h_56 : Css.Style
max_h_56 =
    Css.property "max-height" "14rem"


{-| This class has the effect of following css declaration:

```css
.max-h-6 {
  max-height: 1.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
max_h_6 : Css.Style
max_h_6 =
    Css.property "max-height" "1.5rem"


{-| This class has the effect of following css declaration:

```css
.max-h-60 {
  max-height: 15rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
max_h_60 : Css.Style
max_h_60 =
    Css.property "max-height" "15rem"


{-| This class has the effect of following css declaration:

```css
.max-h-64 {
  max-height: 16rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
max_h_64 : Css.Style
max_h_64 =
    Css.property "max-height" "16rem"


{-| This class has the effect of following css declaration:

```css
.max-h-7 {
  max-height: 1.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
max_h_7 : Css.Style
max_h_7 =
    Css.property "max-height" "1.75rem"


{-| This class has the effect of following css declaration:

```css
.max-h-72 {
  max-height: 18rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
max_h_72 : Css.Style
max_h_72 =
    Css.property "max-height" "18rem"


{-| This class has the effect of following css declaration:

```css
.max-h-8 {
  max-height: 2rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
max_h_8 : Css.Style
max_h_8 =
    Css.property "max-height" "2rem"


{-| This class has the effect of following css declaration:

```css
.max-h-80 {
  max-height: 20rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
max_h_80 : Css.Style
max_h_80 =
    Css.property "max-height" "20rem"


{-| This class has the effect of following css declaration:

```css
.max-h-9 {
  max-height: 2.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
max_h_9 : Css.Style
max_h_9 =
    Css.property "max-height" "2.25rem"


{-| This class has the effect of following css declaration:

```css
.max-h-96 {
  max-height: 24rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
max_h_96 : Css.Style
max_h_96 =
    Css.property "max-height" "24rem"


{-| This class has the effect of following css declaration:

```css
.max-h-full {
  max-height: 100%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
max_h_full : Css.Style
max_h_full =
    Css.property "max-height" "100%"


{-| This class has the effect of following css declaration:

```css
.max-h-px {
  max-height: 1px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
max_h_px : Css.Style
max_h_px =
    Css.property "max-height" "1px"


{-| This class has the effect of following css declaration:

```css
.max-h-screen {
  max-height: 100vh
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
max_h_screen : Css.Style
max_h_screen =
    Css.property "max-height" "100vh"


{-| This class has the effect of following css declaration:

```css
.max-w-0 {
  max-width: 0rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
max_w_0 : Css.Style
max_w_0 =
    Css.property "max-width" "0rem"


{-| This class has the effect of following css declaration:

```css
.max-w-2xl {
  max-width: 42rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
max_w_2xl : Css.Style
max_w_2xl =
    Css.property "max-width" "42rem"


{-| This class has the effect of following css declaration:

```css
.max-w-3xl {
  max-width: 48rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
max_w_3xl : Css.Style
max_w_3xl =
    Css.property "max-width" "48rem"


{-| This class has the effect of following css declaration:

```css
.max-w-4xl {
  max-width: 56rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
max_w_4xl : Css.Style
max_w_4xl =
    Css.property "max-width" "56rem"


{-| This class has the effect of following css declaration:

```css
.max-w-5xl {
  max-width: 64rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
max_w_5xl : Css.Style
max_w_5xl =
    Css.property "max-width" "64rem"


{-| This class has the effect of following css declaration:

```css
.max-w-6xl {
  max-width: 72rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
max_w_6xl : Css.Style
max_w_6xl =
    Css.property "max-width" "72rem"


{-| This class has the effect of following css declaration:

```css
.max-w-7xl {
  max-width: 80rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
max_w_7xl : Css.Style
max_w_7xl =
    Css.property "max-width" "80rem"


{-| This class has the effect of following css declaration:

```css
.max-w-full {
  max-width: 100%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
max_w_full : Css.Style
max_w_full =
    Css.property "max-width" "100%"


{-| This class has the effect of following css declaration:

```css
.max-w-lg {
  max-width: 32rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
max_w_lg : Css.Style
max_w_lg =
    Css.property "max-width" "32rem"


{-| This class has the effect of following css declaration:

```css
.max-w-max {
  max-width: max-content
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
max_w_max : Css.Style
max_w_max =
    Css.property "max-width" "max-content"


{-| This class has the effect of following css declaration:

```css
.max-w-md {
  max-width: 28rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
max_w_md : Css.Style
max_w_md =
    Css.property "max-width" "28rem"


{-| This class has the effect of following css declaration:

```css
.max-w-min {
  max-width: min-content
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
max_w_min : Css.Style
max_w_min =
    Css.property "max-width" "min-content"


{-| This class has the effect of following css declaration:

```css
.max-w-none {
  max-width: none
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
max_w_none : Css.Style
max_w_none =
    Css.property "max-width" "none"


{-| This class has the effect of following css declaration:

```css
.max-w-prose {
  max-width: 65ch
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
max_w_prose : Css.Style
max_w_prose =
    Css.property "max-width" "65ch"


{-| This class has the effect of following css declaration:

```css
.max-w-screen-2xl {
  max-width: 1536px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
max_w_screen_2xl : Css.Style
max_w_screen_2xl =
    Css.property "max-width" "1536px"


{-| This class has the effect of following css declaration:

```css
.max-w-screen-lg {
  max-width: 1024px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
max_w_screen_lg : Css.Style
max_w_screen_lg =
    Css.property "max-width" "1024px"


{-| This class has the effect of following css declaration:

```css
.max-w-screen-md {
  max-width: 768px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
max_w_screen_md : Css.Style
max_w_screen_md =
    Css.property "max-width" "768px"


{-| This class has the effect of following css declaration:

```css
.max-w-screen-sm {
  max-width: 640px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
max_w_screen_sm : Css.Style
max_w_screen_sm =
    Css.property "max-width" "640px"


{-| This class has the effect of following css declaration:

```css
.max-w-screen-xl {
  max-width: 1280px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
max_w_screen_xl : Css.Style
max_w_screen_xl =
    Css.property "max-width" "1280px"


{-| This class has the effect of following css declaration:

```css
.max-w-sm {
  max-width: 24rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
max_w_sm : Css.Style
max_w_sm =
    Css.property "max-width" "24rem"


{-| This class has the effect of following css declaration:

```css
.max-w-xl {
  max-width: 36rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
max_w_xl : Css.Style
max_w_xl =
    Css.property "max-width" "36rem"


{-| This class has the effect of following css declaration:

```css
.max-w-xs {
  max-width: 20rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
max_w_xs : Css.Style
max_w_xs =
    Css.property "max-width" "20rem"


{-| This class has the effect of following css declaration:

```css
.mb-0 {
  margin-bottom: 0px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mb_0 : Css.Style
mb_0 =
    Css.property "margin-bottom" "0px"


{-| This class has the effect of following css declaration:

```css
.mb-0\.5 {
  margin-bottom: 0.125rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mb_0_dot_5 : Css.Style
mb_0_dot_5 =
    Css.property "margin-bottom" "0.125rem"


{-| This class has the effect of following css declaration:

```css
.mb-1 {
  margin-bottom: 0.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mb_1 : Css.Style
mb_1 =
    Css.property "margin-bottom" "0.25rem"


{-| This class has the effect of following css declaration:

```css
.mb-10 {
  margin-bottom: 2.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mb_10 : Css.Style
mb_10 =
    Css.property "margin-bottom" "2.5rem"


{-| This class has the effect of following css declaration:

```css
.mb-11 {
  margin-bottom: 2.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mb_11 : Css.Style
mb_11 =
    Css.property "margin-bottom" "2.75rem"


{-| This class has the effect of following css declaration:

```css
.mb-12 {
  margin-bottom: 3rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mb_12 : Css.Style
mb_12 =
    Css.property "margin-bottom" "3rem"


{-| This class has the effect of following css declaration:

```css
.mb-14 {
  margin-bottom: 3.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mb_14 : Css.Style
mb_14 =
    Css.property "margin-bottom" "3.5rem"


{-| This class has the effect of following css declaration:

```css
.mb-16 {
  margin-bottom: 4rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mb_16 : Css.Style
mb_16 =
    Css.property "margin-bottom" "4rem"


{-| This class has the effect of following css declaration:

```css
.mb-1\.5 {
  margin-bottom: 0.375rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mb_1_dot_5 : Css.Style
mb_1_dot_5 =
    Css.property "margin-bottom" "0.375rem"


{-| This class has the effect of following css declaration:

```css
.mb-2 {
  margin-bottom: 0.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mb_2 : Css.Style
mb_2 =
    Css.property "margin-bottom" "0.5rem"


{-| This class has the effect of following css declaration:

```css
.mb-20 {
  margin-bottom: 5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mb_20 : Css.Style
mb_20 =
    Css.property "margin-bottom" "5rem"


{-| This class has the effect of following css declaration:

```css
.mb-24 {
  margin-bottom: 6rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mb_24 : Css.Style
mb_24 =
    Css.property "margin-bottom" "6rem"


{-| This class has the effect of following css declaration:

```css
.mb-28 {
  margin-bottom: 7rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mb_28 : Css.Style
mb_28 =
    Css.property "margin-bottom" "7rem"


{-| This class has the effect of following css declaration:

```css
.mb-2\.5 {
  margin-bottom: 0.625rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mb_2_dot_5 : Css.Style
mb_2_dot_5 =
    Css.property "margin-bottom" "0.625rem"


{-| This class has the effect of following css declaration:

```css
.mb-3 {
  margin-bottom: 0.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mb_3 : Css.Style
mb_3 =
    Css.property "margin-bottom" "0.75rem"


{-| This class has the effect of following css declaration:

```css
.mb-32 {
  margin-bottom: 8rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mb_32 : Css.Style
mb_32 =
    Css.property "margin-bottom" "8rem"


{-| This class has the effect of following css declaration:

```css
.mb-36 {
  margin-bottom: 9rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mb_36 : Css.Style
mb_36 =
    Css.property "margin-bottom" "9rem"


{-| This class has the effect of following css declaration:

```css
.mb-3\.5 {
  margin-bottom: 0.875rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mb_3_dot_5 : Css.Style
mb_3_dot_5 =
    Css.property "margin-bottom" "0.875rem"


{-| This class has the effect of following css declaration:

```css
.mb-4 {
  margin-bottom: 1rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mb_4 : Css.Style
mb_4 =
    Css.property "margin-bottom" "1rem"


{-| This class has the effect of following css declaration:

```css
.mb-40 {
  margin-bottom: 10rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mb_40 : Css.Style
mb_40 =
    Css.property "margin-bottom" "10rem"


{-| This class has the effect of following css declaration:

```css
.mb-44 {
  margin-bottom: 11rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mb_44 : Css.Style
mb_44 =
    Css.property "margin-bottom" "11rem"


{-| This class has the effect of following css declaration:

```css
.mb-48 {
  margin-bottom: 12rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mb_48 : Css.Style
mb_48 =
    Css.property "margin-bottom" "12rem"


{-| This class has the effect of following css declaration:

```css
.mb-5 {
  margin-bottom: 1.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mb_5 : Css.Style
mb_5 =
    Css.property "margin-bottom" "1.25rem"


{-| This class has the effect of following css declaration:

```css
.mb-52 {
  margin-bottom: 13rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mb_52 : Css.Style
mb_52 =
    Css.property "margin-bottom" "13rem"


{-| This class has the effect of following css declaration:

```css
.mb-56 {
  margin-bottom: 14rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mb_56 : Css.Style
mb_56 =
    Css.property "margin-bottom" "14rem"


{-| This class has the effect of following css declaration:

```css
.mb-6 {
  margin-bottom: 1.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mb_6 : Css.Style
mb_6 =
    Css.property "margin-bottom" "1.5rem"


{-| This class has the effect of following css declaration:

```css
.mb-60 {
  margin-bottom: 15rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mb_60 : Css.Style
mb_60 =
    Css.property "margin-bottom" "15rem"


{-| This class has the effect of following css declaration:

```css
.mb-64 {
  margin-bottom: 16rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mb_64 : Css.Style
mb_64 =
    Css.property "margin-bottom" "16rem"


{-| This class has the effect of following css declaration:

```css
.mb-7 {
  margin-bottom: 1.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mb_7 : Css.Style
mb_7 =
    Css.property "margin-bottom" "1.75rem"


{-| This class has the effect of following css declaration:

```css
.mb-72 {
  margin-bottom: 18rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mb_72 : Css.Style
mb_72 =
    Css.property "margin-bottom" "18rem"


{-| This class has the effect of following css declaration:

```css
.mb-8 {
  margin-bottom: 2rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mb_8 : Css.Style
mb_8 =
    Css.property "margin-bottom" "2rem"


{-| This class has the effect of following css declaration:

```css
.mb-80 {
  margin-bottom: 20rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mb_80 : Css.Style
mb_80 =
    Css.property "margin-bottom" "20rem"


{-| This class has the effect of following css declaration:

```css
.mb-9 {
  margin-bottom: 2.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mb_9 : Css.Style
mb_9 =
    Css.property "margin-bottom" "2.25rem"


{-| This class has the effect of following css declaration:

```css
.mb-96 {
  margin-bottom: 24rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mb_96 : Css.Style
mb_96 =
    Css.property "margin-bottom" "24rem"


{-| This class has the effect of following css declaration:

```css
.mb-auto {
  margin-bottom: auto
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mb_auto : Css.Style
mb_auto =
    Css.property "margin-bottom" "auto"


{-| This class has the effect of following css declaration:

```css
.mb-px {
  margin-bottom: 1px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mb_px : Css.Style
mb_px =
    Css.property "margin-bottom" "1px"


{-| This class has the effect of following css declaration:

```css
.min-h-0 {
  min-height: 0px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
min_h_0 : Css.Style
min_h_0 =
    Css.property "min-height" "0px"


{-| This class has the effect of following css declaration:

```css
.min-h-full {
  min-height: 100%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
min_h_full : Css.Style
min_h_full =
    Css.property "min-height" "100%"


{-| This class has the effect of following css declaration:

```css
.min-h-screen {
  min-height: 100vh
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
min_h_screen : Css.Style
min_h_screen =
    Css.property "min-height" "100vh"


{-| This class has the effect of following css declaration:

```css
.min-w-0 {
  min-width: 0px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
min_w_0 : Css.Style
min_w_0 =
    Css.property "min-width" "0px"


{-| This class has the effect of following css declaration:

```css
.min-w-full {
  min-width: 100%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
min_w_full : Css.Style
min_w_full =
    Css.property "min-width" "100%"


{-| This class has the effect of following css declaration:

```css
.min-w-max {
  min-width: max-content
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
min_w_max : Css.Style
min_w_max =
    Css.property "min-width" "max-content"


{-| This class has the effect of following css declaration:

```css
.min-w-min {
  min-width: min-content
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
min_w_min : Css.Style
min_w_min =
    Css.property "min-width" "min-content"


{-| This class has the effect of following css declaration:

```css
.mix-blend-color {
  mix-blend-mode: color
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mix_blend_color : Css.Style
mix_blend_color =
    Css.property "mix-blend-mode" "color"


{-| This class has the effect of following css declaration:

```css
.mix-blend-color-burn {
  mix-blend-mode: color-burn
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mix_blend_color_burn : Css.Style
mix_blend_color_burn =
    Css.property "mix-blend-mode" "color-burn"


{-| This class has the effect of following css declaration:

```css
.mix-blend-color-dodge {
  mix-blend-mode: color-dodge
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mix_blend_color_dodge : Css.Style
mix_blend_color_dodge =
    Css.property "mix-blend-mode" "color-dodge"


{-| This class has the effect of following css declaration:

```css
.mix-blend-darken {
  mix-blend-mode: darken
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mix_blend_darken : Css.Style
mix_blend_darken =
    Css.property "mix-blend-mode" "darken"


{-| This class has the effect of following css declaration:

```css
.mix-blend-difference {
  mix-blend-mode: difference
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mix_blend_difference : Css.Style
mix_blend_difference =
    Css.property "mix-blend-mode" "difference"


{-| This class has the effect of following css declaration:

```css
.mix-blend-exclusion {
  mix-blend-mode: exclusion
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mix_blend_exclusion : Css.Style
mix_blend_exclusion =
    Css.property "mix-blend-mode" "exclusion"


{-| This class has the effect of following css declaration:

```css
.mix-blend-hard-light {
  mix-blend-mode: hard-light
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mix_blend_hard_light : Css.Style
mix_blend_hard_light =
    Css.property "mix-blend-mode" "hard-light"


{-| This class has the effect of following css declaration:

```css
.mix-blend-hue {
  mix-blend-mode: hue
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mix_blend_hue : Css.Style
mix_blend_hue =
    Css.property "mix-blend-mode" "hue"


{-| This class has the effect of following css declaration:

```css
.mix-blend-lighten {
  mix-blend-mode: lighten
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mix_blend_lighten : Css.Style
mix_blend_lighten =
    Css.property "mix-blend-mode" "lighten"


{-| This class has the effect of following css declaration:

```css
.mix-blend-luminosity {
  mix-blend-mode: luminosity
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mix_blend_luminosity : Css.Style
mix_blend_luminosity =
    Css.property "mix-blend-mode" "luminosity"


{-| This class has the effect of following css declaration:

```css
.mix-blend-multiply {
  mix-blend-mode: multiply
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mix_blend_multiply : Css.Style
mix_blend_multiply =
    Css.property "mix-blend-mode" "multiply"


{-| This class has the effect of following css declaration:

```css
.mix-blend-normal {
  mix-blend-mode: normal
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mix_blend_normal : Css.Style
mix_blend_normal =
    Css.property "mix-blend-mode" "normal"


{-| This class has the effect of following css declaration:

```css
.mix-blend-overlay {
  mix-blend-mode: overlay
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mix_blend_overlay : Css.Style
mix_blend_overlay =
    Css.property "mix-blend-mode" "overlay"


{-| This class has the effect of following css declaration:

```css
.mix-blend-saturation {
  mix-blend-mode: saturation
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mix_blend_saturation : Css.Style
mix_blend_saturation =
    Css.property "mix-blend-mode" "saturation"


{-| This class has the effect of following css declaration:

```css
.mix-blend-screen {
  mix-blend-mode: screen
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mix_blend_screen : Css.Style
mix_blend_screen =
    Css.property "mix-blend-mode" "screen"


{-| This class has the effect of following css declaration:

```css
.mix-blend-soft-light {
  mix-blend-mode: soft-light
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mix_blend_soft_light : Css.Style
mix_blend_soft_light =
    Css.property "mix-blend-mode" "soft-light"


{-| This class has the effect of following css declaration:

```css
.ml-0 {
  margin-left: 0px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
ml_0 : Css.Style
ml_0 =
    Css.property "margin-left" "0px"


{-| This class has the effect of following css declaration:

```css
.ml-0\.5 {
  margin-left: 0.125rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
ml_0_dot_5 : Css.Style
ml_0_dot_5 =
    Css.property "margin-left" "0.125rem"


{-| This class has the effect of following css declaration:

```css
.ml-1 {
  margin-left: 0.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
ml_1 : Css.Style
ml_1 =
    Css.property "margin-left" "0.25rem"


{-| This class has the effect of following css declaration:

```css
.ml-10 {
  margin-left: 2.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
ml_10 : Css.Style
ml_10 =
    Css.property "margin-left" "2.5rem"


{-| This class has the effect of following css declaration:

```css
.ml-11 {
  margin-left: 2.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
ml_11 : Css.Style
ml_11 =
    Css.property "margin-left" "2.75rem"


{-| This class has the effect of following css declaration:

```css
.ml-12 {
  margin-left: 3rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
ml_12 : Css.Style
ml_12 =
    Css.property "margin-left" "3rem"


{-| This class has the effect of following css declaration:

```css
.ml-14 {
  margin-left: 3.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
ml_14 : Css.Style
ml_14 =
    Css.property "margin-left" "3.5rem"


{-| This class has the effect of following css declaration:

```css
.ml-16 {
  margin-left: 4rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
ml_16 : Css.Style
ml_16 =
    Css.property "margin-left" "4rem"


{-| This class has the effect of following css declaration:

```css
.ml-1\.5 {
  margin-left: 0.375rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
ml_1_dot_5 : Css.Style
ml_1_dot_5 =
    Css.property "margin-left" "0.375rem"


{-| This class has the effect of following css declaration:

```css
.ml-2 {
  margin-left: 0.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
ml_2 : Css.Style
ml_2 =
    Css.property "margin-left" "0.5rem"


{-| This class has the effect of following css declaration:

```css
.ml-20 {
  margin-left: 5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
ml_20 : Css.Style
ml_20 =
    Css.property "margin-left" "5rem"


{-| This class has the effect of following css declaration:

```css
.ml-24 {
  margin-left: 6rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
ml_24 : Css.Style
ml_24 =
    Css.property "margin-left" "6rem"


{-| This class has the effect of following css declaration:

```css
.ml-28 {
  margin-left: 7rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
ml_28 : Css.Style
ml_28 =
    Css.property "margin-left" "7rem"


{-| This class has the effect of following css declaration:

```css
.ml-2\.5 {
  margin-left: 0.625rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
ml_2_dot_5 : Css.Style
ml_2_dot_5 =
    Css.property "margin-left" "0.625rem"


{-| This class has the effect of following css declaration:

```css
.ml-3 {
  margin-left: 0.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
ml_3 : Css.Style
ml_3 =
    Css.property "margin-left" "0.75rem"


{-| This class has the effect of following css declaration:

```css
.ml-32 {
  margin-left: 8rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
ml_32 : Css.Style
ml_32 =
    Css.property "margin-left" "8rem"


{-| This class has the effect of following css declaration:

```css
.ml-36 {
  margin-left: 9rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
ml_36 : Css.Style
ml_36 =
    Css.property "margin-left" "9rem"


{-| This class has the effect of following css declaration:

```css
.ml-3\.5 {
  margin-left: 0.875rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
ml_3_dot_5 : Css.Style
ml_3_dot_5 =
    Css.property "margin-left" "0.875rem"


{-| This class has the effect of following css declaration:

```css
.ml-4 {
  margin-left: 1rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
ml_4 : Css.Style
ml_4 =
    Css.property "margin-left" "1rem"


{-| This class has the effect of following css declaration:

```css
.ml-40 {
  margin-left: 10rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
ml_40 : Css.Style
ml_40 =
    Css.property "margin-left" "10rem"


{-| This class has the effect of following css declaration:

```css
.ml-44 {
  margin-left: 11rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
ml_44 : Css.Style
ml_44 =
    Css.property "margin-left" "11rem"


{-| This class has the effect of following css declaration:

```css
.ml-48 {
  margin-left: 12rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
ml_48 : Css.Style
ml_48 =
    Css.property "margin-left" "12rem"


{-| This class has the effect of following css declaration:

```css
.ml-5 {
  margin-left: 1.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
ml_5 : Css.Style
ml_5 =
    Css.property "margin-left" "1.25rem"


{-| This class has the effect of following css declaration:

```css
.ml-52 {
  margin-left: 13rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
ml_52 : Css.Style
ml_52 =
    Css.property "margin-left" "13rem"


{-| This class has the effect of following css declaration:

```css
.ml-56 {
  margin-left: 14rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
ml_56 : Css.Style
ml_56 =
    Css.property "margin-left" "14rem"


{-| This class has the effect of following css declaration:

```css
.ml-6 {
  margin-left: 1.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
ml_6 : Css.Style
ml_6 =
    Css.property "margin-left" "1.5rem"


{-| This class has the effect of following css declaration:

```css
.ml-60 {
  margin-left: 15rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
ml_60 : Css.Style
ml_60 =
    Css.property "margin-left" "15rem"


{-| This class has the effect of following css declaration:

```css
.ml-64 {
  margin-left: 16rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
ml_64 : Css.Style
ml_64 =
    Css.property "margin-left" "16rem"


{-| This class has the effect of following css declaration:

```css
.ml-7 {
  margin-left: 1.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
ml_7 : Css.Style
ml_7 =
    Css.property "margin-left" "1.75rem"


{-| This class has the effect of following css declaration:

```css
.ml-72 {
  margin-left: 18rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
ml_72 : Css.Style
ml_72 =
    Css.property "margin-left" "18rem"


{-| This class has the effect of following css declaration:

```css
.ml-8 {
  margin-left: 2rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
ml_8 : Css.Style
ml_8 =
    Css.property "margin-left" "2rem"


{-| This class has the effect of following css declaration:

```css
.ml-80 {
  margin-left: 20rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
ml_80 : Css.Style
ml_80 =
    Css.property "margin-left" "20rem"


{-| This class has the effect of following css declaration:

```css
.ml-9 {
  margin-left: 2.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
ml_9 : Css.Style
ml_9 =
    Css.property "margin-left" "2.25rem"


{-| This class has the effect of following css declaration:

```css
.ml-96 {
  margin-left: 24rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
ml_96 : Css.Style
ml_96 =
    Css.property "margin-left" "24rem"


{-| This class has the effect of following css declaration:

```css
.ml-auto {
  margin-left: auto
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
ml_auto : Css.Style
ml_auto =
    Css.property "margin-left" "auto"


{-| This class has the effect of following css declaration:

```css
.ml-px {
  margin-left: 1px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
ml_px : Css.Style
ml_px =
    Css.property "margin-left" "1px"


{-| This class has the effect of following css declaration:

```css
.mr-0 {
  margin-right: 0px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mr_0 : Css.Style
mr_0 =
    Css.property "margin-right" "0px"


{-| This class has the effect of following css declaration:

```css
.mr-0\.5 {
  margin-right: 0.125rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mr_0_dot_5 : Css.Style
mr_0_dot_5 =
    Css.property "margin-right" "0.125rem"


{-| This class has the effect of following css declaration:

```css
.mr-1 {
  margin-right: 0.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mr_1 : Css.Style
mr_1 =
    Css.property "margin-right" "0.25rem"


{-| This class has the effect of following css declaration:

```css
.mr-10 {
  margin-right: 2.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mr_10 : Css.Style
mr_10 =
    Css.property "margin-right" "2.5rem"


{-| This class has the effect of following css declaration:

```css
.mr-11 {
  margin-right: 2.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mr_11 : Css.Style
mr_11 =
    Css.property "margin-right" "2.75rem"


{-| This class has the effect of following css declaration:

```css
.mr-12 {
  margin-right: 3rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mr_12 : Css.Style
mr_12 =
    Css.property "margin-right" "3rem"


{-| This class has the effect of following css declaration:

```css
.mr-14 {
  margin-right: 3.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mr_14 : Css.Style
mr_14 =
    Css.property "margin-right" "3.5rem"


{-| This class has the effect of following css declaration:

```css
.mr-16 {
  margin-right: 4rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mr_16 : Css.Style
mr_16 =
    Css.property "margin-right" "4rem"


{-| This class has the effect of following css declaration:

```css
.mr-1\.5 {
  margin-right: 0.375rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mr_1_dot_5 : Css.Style
mr_1_dot_5 =
    Css.property "margin-right" "0.375rem"


{-| This class has the effect of following css declaration:

```css
.mr-2 {
  margin-right: 0.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mr_2 : Css.Style
mr_2 =
    Css.property "margin-right" "0.5rem"


{-| This class has the effect of following css declaration:

```css
.mr-20 {
  margin-right: 5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mr_20 : Css.Style
mr_20 =
    Css.property "margin-right" "5rem"


{-| This class has the effect of following css declaration:

```css
.mr-24 {
  margin-right: 6rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mr_24 : Css.Style
mr_24 =
    Css.property "margin-right" "6rem"


{-| This class has the effect of following css declaration:

```css
.mr-28 {
  margin-right: 7rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mr_28 : Css.Style
mr_28 =
    Css.property "margin-right" "7rem"


{-| This class has the effect of following css declaration:

```css
.mr-2\.5 {
  margin-right: 0.625rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mr_2_dot_5 : Css.Style
mr_2_dot_5 =
    Css.property "margin-right" "0.625rem"


{-| This class has the effect of following css declaration:

```css
.mr-3 {
  margin-right: 0.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mr_3 : Css.Style
mr_3 =
    Css.property "margin-right" "0.75rem"


{-| This class has the effect of following css declaration:

```css
.mr-32 {
  margin-right: 8rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mr_32 : Css.Style
mr_32 =
    Css.property "margin-right" "8rem"


{-| This class has the effect of following css declaration:

```css
.mr-36 {
  margin-right: 9rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mr_36 : Css.Style
mr_36 =
    Css.property "margin-right" "9rem"


{-| This class has the effect of following css declaration:

```css
.mr-3\.5 {
  margin-right: 0.875rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mr_3_dot_5 : Css.Style
mr_3_dot_5 =
    Css.property "margin-right" "0.875rem"


{-| This class has the effect of following css declaration:

```css
.mr-4 {
  margin-right: 1rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mr_4 : Css.Style
mr_4 =
    Css.property "margin-right" "1rem"


{-| This class has the effect of following css declaration:

```css
.mr-40 {
  margin-right: 10rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mr_40 : Css.Style
mr_40 =
    Css.property "margin-right" "10rem"


{-| This class has the effect of following css declaration:

```css
.mr-44 {
  margin-right: 11rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mr_44 : Css.Style
mr_44 =
    Css.property "margin-right" "11rem"


{-| This class has the effect of following css declaration:

```css
.mr-48 {
  margin-right: 12rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mr_48 : Css.Style
mr_48 =
    Css.property "margin-right" "12rem"


{-| This class has the effect of following css declaration:

```css
.mr-5 {
  margin-right: 1.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mr_5 : Css.Style
mr_5 =
    Css.property "margin-right" "1.25rem"


{-| This class has the effect of following css declaration:

```css
.mr-52 {
  margin-right: 13rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mr_52 : Css.Style
mr_52 =
    Css.property "margin-right" "13rem"


{-| This class has the effect of following css declaration:

```css
.mr-56 {
  margin-right: 14rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mr_56 : Css.Style
mr_56 =
    Css.property "margin-right" "14rem"


{-| This class has the effect of following css declaration:

```css
.mr-6 {
  margin-right: 1.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mr_6 : Css.Style
mr_6 =
    Css.property "margin-right" "1.5rem"


{-| This class has the effect of following css declaration:

```css
.mr-60 {
  margin-right: 15rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mr_60 : Css.Style
mr_60 =
    Css.property "margin-right" "15rem"


{-| This class has the effect of following css declaration:

```css
.mr-64 {
  margin-right: 16rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mr_64 : Css.Style
mr_64 =
    Css.property "margin-right" "16rem"


{-| This class has the effect of following css declaration:

```css
.mr-7 {
  margin-right: 1.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mr_7 : Css.Style
mr_7 =
    Css.property "margin-right" "1.75rem"


{-| This class has the effect of following css declaration:

```css
.mr-72 {
  margin-right: 18rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mr_72 : Css.Style
mr_72 =
    Css.property "margin-right" "18rem"


{-| This class has the effect of following css declaration:

```css
.mr-8 {
  margin-right: 2rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mr_8 : Css.Style
mr_8 =
    Css.property "margin-right" "2rem"


{-| This class has the effect of following css declaration:

```css
.mr-80 {
  margin-right: 20rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mr_80 : Css.Style
mr_80 =
    Css.property "margin-right" "20rem"


{-| This class has the effect of following css declaration:

```css
.mr-9 {
  margin-right: 2.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mr_9 : Css.Style
mr_9 =
    Css.property "margin-right" "2.25rem"


{-| This class has the effect of following css declaration:

```css
.mr-96 {
  margin-right: 24rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mr_96 : Css.Style
mr_96 =
    Css.property "margin-right" "24rem"


{-| This class has the effect of following css declaration:

```css
.mr-auto {
  margin-right: auto
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mr_auto : Css.Style
mr_auto =
    Css.property "margin-right" "auto"


{-| This class has the effect of following css declaration:

```css
.mr-px {
  margin-right: 1px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mr_px : Css.Style
mr_px =
    Css.property "margin-right" "1px"


{-| This class has the effect of following css declaration:

```css
.mt-0 {
  margin-top: 0px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mt_0 : Css.Style
mt_0 =
    Css.property "margin-top" "0px"


{-| This class has the effect of following css declaration:

```css
.mt-0\.5 {
  margin-top: 0.125rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mt_0_dot_5 : Css.Style
mt_0_dot_5 =
    Css.property "margin-top" "0.125rem"


{-| This class has the effect of following css declaration:

```css
.mt-1 {
  margin-top: 0.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mt_1 : Css.Style
mt_1 =
    Css.property "margin-top" "0.25rem"


{-| This class has the effect of following css declaration:

```css
.mt-10 {
  margin-top: 2.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mt_10 : Css.Style
mt_10 =
    Css.property "margin-top" "2.5rem"


{-| This class has the effect of following css declaration:

```css
.mt-11 {
  margin-top: 2.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mt_11 : Css.Style
mt_11 =
    Css.property "margin-top" "2.75rem"


{-| This class has the effect of following css declaration:

```css
.mt-12 {
  margin-top: 3rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mt_12 : Css.Style
mt_12 =
    Css.property "margin-top" "3rem"


{-| This class has the effect of following css declaration:

```css
.mt-14 {
  margin-top: 3.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mt_14 : Css.Style
mt_14 =
    Css.property "margin-top" "3.5rem"


{-| This class has the effect of following css declaration:

```css
.mt-16 {
  margin-top: 4rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mt_16 : Css.Style
mt_16 =
    Css.property "margin-top" "4rem"


{-| This class has the effect of following css declaration:

```css
.mt-1\.5 {
  margin-top: 0.375rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mt_1_dot_5 : Css.Style
mt_1_dot_5 =
    Css.property "margin-top" "0.375rem"


{-| This class has the effect of following css declaration:

```css
.mt-2 {
  margin-top: 0.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mt_2 : Css.Style
mt_2 =
    Css.property "margin-top" "0.5rem"


{-| This class has the effect of following css declaration:

```css
.mt-20 {
  margin-top: 5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mt_20 : Css.Style
mt_20 =
    Css.property "margin-top" "5rem"


{-| This class has the effect of following css declaration:

```css
.mt-24 {
  margin-top: 6rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mt_24 : Css.Style
mt_24 =
    Css.property "margin-top" "6rem"


{-| This class has the effect of following css declaration:

```css
.mt-28 {
  margin-top: 7rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mt_28 : Css.Style
mt_28 =
    Css.property "margin-top" "7rem"


{-| This class has the effect of following css declaration:

```css
.mt-2\.5 {
  margin-top: 0.625rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mt_2_dot_5 : Css.Style
mt_2_dot_5 =
    Css.property "margin-top" "0.625rem"


{-| This class has the effect of following css declaration:

```css
.mt-3 {
  margin-top: 0.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mt_3 : Css.Style
mt_3 =
    Css.property "margin-top" "0.75rem"


{-| This class has the effect of following css declaration:

```css
.mt-32 {
  margin-top: 8rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mt_32 : Css.Style
mt_32 =
    Css.property "margin-top" "8rem"


{-| This class has the effect of following css declaration:

```css
.mt-36 {
  margin-top: 9rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mt_36 : Css.Style
mt_36 =
    Css.property "margin-top" "9rem"


{-| This class has the effect of following css declaration:

```css
.mt-3\.5 {
  margin-top: 0.875rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mt_3_dot_5 : Css.Style
mt_3_dot_5 =
    Css.property "margin-top" "0.875rem"


{-| This class has the effect of following css declaration:

```css
.mt-4 {
  margin-top: 1rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mt_4 : Css.Style
mt_4 =
    Css.property "margin-top" "1rem"


{-| This class has the effect of following css declaration:

```css
.mt-40 {
  margin-top: 10rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mt_40 : Css.Style
mt_40 =
    Css.property "margin-top" "10rem"


{-| This class has the effect of following css declaration:

```css
.mt-44 {
  margin-top: 11rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mt_44 : Css.Style
mt_44 =
    Css.property "margin-top" "11rem"


{-| This class has the effect of following css declaration:

```css
.mt-48 {
  margin-top: 12rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mt_48 : Css.Style
mt_48 =
    Css.property "margin-top" "12rem"


{-| This class has the effect of following css declaration:

```css
.mt-5 {
  margin-top: 1.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mt_5 : Css.Style
mt_5 =
    Css.property "margin-top" "1.25rem"


{-| This class has the effect of following css declaration:

```css
.mt-52 {
  margin-top: 13rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mt_52 : Css.Style
mt_52 =
    Css.property "margin-top" "13rem"


{-| This class has the effect of following css declaration:

```css
.mt-56 {
  margin-top: 14rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mt_56 : Css.Style
mt_56 =
    Css.property "margin-top" "14rem"


{-| This class has the effect of following css declaration:

```css
.mt-6 {
  margin-top: 1.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mt_6 : Css.Style
mt_6 =
    Css.property "margin-top" "1.5rem"


{-| This class has the effect of following css declaration:

```css
.mt-60 {
  margin-top: 15rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mt_60 : Css.Style
mt_60 =
    Css.property "margin-top" "15rem"


{-| This class has the effect of following css declaration:

```css
.mt-64 {
  margin-top: 16rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mt_64 : Css.Style
mt_64 =
    Css.property "margin-top" "16rem"


{-| This class has the effect of following css declaration:

```css
.mt-7 {
  margin-top: 1.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mt_7 : Css.Style
mt_7 =
    Css.property "margin-top" "1.75rem"


{-| This class has the effect of following css declaration:

```css
.mt-72 {
  margin-top: 18rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mt_72 : Css.Style
mt_72 =
    Css.property "margin-top" "18rem"


{-| This class has the effect of following css declaration:

```css
.mt-8 {
  margin-top: 2rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mt_8 : Css.Style
mt_8 =
    Css.property "margin-top" "2rem"


{-| This class has the effect of following css declaration:

```css
.mt-80 {
  margin-top: 20rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mt_80 : Css.Style
mt_80 =
    Css.property "margin-top" "20rem"


{-| This class has the effect of following css declaration:

```css
.mt-9 {
  margin-top: 2.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mt_9 : Css.Style
mt_9 =
    Css.property "margin-top" "2.25rem"


{-| This class has the effect of following css declaration:

```css
.mt-96 {
  margin-top: 24rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mt_96 : Css.Style
mt_96 =
    Css.property "margin-top" "24rem"


{-| This class has the effect of following css declaration:

```css
.mt-auto {
  margin-top: auto
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mt_auto : Css.Style
mt_auto =
    Css.property "margin-top" "auto"


{-| This class has the effect of following css declaration:

```css
.mt-px {
  margin-top: 1px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mt_px : Css.Style
mt_px =
    Css.property "margin-top" "1px"


{-| This class has the effect of following css declaration:

```css
.mx-0 {
  margin-left: 0px;
  margin-right: 0px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mx_0 : Css.Style
mx_0 =
    Css.batch
        [ Css.property "margin-left" "0px"
        , Css.property "margin-right" "0px"
        ]


{-| This class has the effect of following css declaration:

```css
.mx-0\.5 {
  margin-left: 0.125rem;
  margin-right: 0.125rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mx_0_dot_5 : Css.Style
mx_0_dot_5 =
    Css.batch
        [ Css.property "margin-left" "0.125rem"
        , Css.property "margin-right" "0.125rem"
        ]


{-| This class has the effect of following css declaration:

```css
.mx-1 {
  margin-left: 0.25rem;
  margin-right: 0.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mx_1 : Css.Style
mx_1 =
    Css.batch
        [ Css.property "margin-left" "0.25rem"
        , Css.property "margin-right" "0.25rem"
        ]


{-| This class has the effect of following css declaration:

```css
.mx-10 {
  margin-left: 2.5rem;
  margin-right: 2.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mx_10 : Css.Style
mx_10 =
    Css.batch
        [ Css.property "margin-left" "2.5rem"
        , Css.property "margin-right" "2.5rem"
        ]


{-| This class has the effect of following css declaration:

```css
.mx-11 {
  margin-left: 2.75rem;
  margin-right: 2.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mx_11 : Css.Style
mx_11 =
    Css.batch
        [ Css.property "margin-left" "2.75rem"
        , Css.property "margin-right" "2.75rem"
        ]


{-| This class has the effect of following css declaration:

```css
.mx-12 {
  margin-left: 3rem;
  margin-right: 3rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mx_12 : Css.Style
mx_12 =
    Css.batch
        [ Css.property "margin-left" "3rem"
        , Css.property "margin-right" "3rem"
        ]


{-| This class has the effect of following css declaration:

```css
.mx-14 {
  margin-left: 3.5rem;
  margin-right: 3.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mx_14 : Css.Style
mx_14 =
    Css.batch
        [ Css.property "margin-left" "3.5rem"
        , Css.property "margin-right" "3.5rem"
        ]


{-| This class has the effect of following css declaration:

```css
.mx-16 {
  margin-left: 4rem;
  margin-right: 4rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mx_16 : Css.Style
mx_16 =
    Css.batch
        [ Css.property "margin-left" "4rem"
        , Css.property "margin-right" "4rem"
        ]


{-| This class has the effect of following css declaration:

```css
.mx-1\.5 {
  margin-left: 0.375rem;
  margin-right: 0.375rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mx_1_dot_5 : Css.Style
mx_1_dot_5 =
    Css.batch
        [ Css.property "margin-left" "0.375rem"
        , Css.property "margin-right" "0.375rem"
        ]


{-| This class has the effect of following css declaration:

```css
.mx-2 {
  margin-left: 0.5rem;
  margin-right: 0.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mx_2 : Css.Style
mx_2 =
    Css.batch
        [ Css.property "margin-left" "0.5rem"
        , Css.property "margin-right" "0.5rem"
        ]


{-| This class has the effect of following css declaration:

```css
.mx-20 {
  margin-left: 5rem;
  margin-right: 5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mx_20 : Css.Style
mx_20 =
    Css.batch
        [ Css.property "margin-left" "5rem"
        , Css.property "margin-right" "5rem"
        ]


{-| This class has the effect of following css declaration:

```css
.mx-24 {
  margin-left: 6rem;
  margin-right: 6rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mx_24 : Css.Style
mx_24 =
    Css.batch
        [ Css.property "margin-left" "6rem"
        , Css.property "margin-right" "6rem"
        ]


{-| This class has the effect of following css declaration:

```css
.mx-28 {
  margin-left: 7rem;
  margin-right: 7rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mx_28 : Css.Style
mx_28 =
    Css.batch
        [ Css.property "margin-left" "7rem"
        , Css.property "margin-right" "7rem"
        ]


{-| This class has the effect of following css declaration:

```css
.mx-2\.5 {
  margin-left: 0.625rem;
  margin-right: 0.625rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mx_2_dot_5 : Css.Style
mx_2_dot_5 =
    Css.batch
        [ Css.property "margin-left" "0.625rem"
        , Css.property "margin-right" "0.625rem"
        ]


{-| This class has the effect of following css declaration:

```css
.mx-3 {
  margin-left: 0.75rem;
  margin-right: 0.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mx_3 : Css.Style
mx_3 =
    Css.batch
        [ Css.property "margin-left" "0.75rem"
        , Css.property "margin-right" "0.75rem"
        ]


{-| This class has the effect of following css declaration:

```css
.mx-32 {
  margin-left: 8rem;
  margin-right: 8rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mx_32 : Css.Style
mx_32 =
    Css.batch
        [ Css.property "margin-left" "8rem"
        , Css.property "margin-right" "8rem"
        ]


{-| This class has the effect of following css declaration:

```css
.mx-36 {
  margin-left: 9rem;
  margin-right: 9rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mx_36 : Css.Style
mx_36 =
    Css.batch
        [ Css.property "margin-left" "9rem"
        , Css.property "margin-right" "9rem"
        ]


{-| This class has the effect of following css declaration:

```css
.mx-3\.5 {
  margin-left: 0.875rem;
  margin-right: 0.875rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mx_3_dot_5 : Css.Style
mx_3_dot_5 =
    Css.batch
        [ Css.property "margin-left" "0.875rem"
        , Css.property "margin-right" "0.875rem"
        ]


{-| This class has the effect of following css declaration:

```css
.mx-4 {
  margin-left: 1rem;
  margin-right: 1rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mx_4 : Css.Style
mx_4 =
    Css.batch
        [ Css.property "margin-left" "1rem"
        , Css.property "margin-right" "1rem"
        ]


{-| This class has the effect of following css declaration:

```css
.mx-40 {
  margin-left: 10rem;
  margin-right: 10rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mx_40 : Css.Style
mx_40 =
    Css.batch
        [ Css.property "margin-left" "10rem"
        , Css.property "margin-right" "10rem"
        ]


{-| This class has the effect of following css declaration:

```css
.mx-44 {
  margin-left: 11rem;
  margin-right: 11rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mx_44 : Css.Style
mx_44 =
    Css.batch
        [ Css.property "margin-left" "11rem"
        , Css.property "margin-right" "11rem"
        ]


{-| This class has the effect of following css declaration:

```css
.mx-48 {
  margin-left: 12rem;
  margin-right: 12rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mx_48 : Css.Style
mx_48 =
    Css.batch
        [ Css.property "margin-left" "12rem"
        , Css.property "margin-right" "12rem"
        ]


{-| This class has the effect of following css declaration:

```css
.mx-5 {
  margin-left: 1.25rem;
  margin-right: 1.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mx_5 : Css.Style
mx_5 =
    Css.batch
        [ Css.property "margin-left" "1.25rem"
        , Css.property "margin-right" "1.25rem"
        ]


{-| This class has the effect of following css declaration:

```css
.mx-52 {
  margin-left: 13rem;
  margin-right: 13rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mx_52 : Css.Style
mx_52 =
    Css.batch
        [ Css.property "margin-left" "13rem"
        , Css.property "margin-right" "13rem"
        ]


{-| This class has the effect of following css declaration:

```css
.mx-56 {
  margin-left: 14rem;
  margin-right: 14rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mx_56 : Css.Style
mx_56 =
    Css.batch
        [ Css.property "margin-left" "14rem"
        , Css.property "margin-right" "14rem"
        ]


{-| This class has the effect of following css declaration:

```css
.mx-6 {
  margin-left: 1.5rem;
  margin-right: 1.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mx_6 : Css.Style
mx_6 =
    Css.batch
        [ Css.property "margin-left" "1.5rem"
        , Css.property "margin-right" "1.5rem"
        ]


{-| This class has the effect of following css declaration:

```css
.mx-60 {
  margin-left: 15rem;
  margin-right: 15rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mx_60 : Css.Style
mx_60 =
    Css.batch
        [ Css.property "margin-left" "15rem"
        , Css.property "margin-right" "15rem"
        ]


{-| This class has the effect of following css declaration:

```css
.mx-64 {
  margin-left: 16rem;
  margin-right: 16rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mx_64 : Css.Style
mx_64 =
    Css.batch
        [ Css.property "margin-left" "16rem"
        , Css.property "margin-right" "16rem"
        ]


{-| This class has the effect of following css declaration:

```css
.mx-7 {
  margin-left: 1.75rem;
  margin-right: 1.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mx_7 : Css.Style
mx_7 =
    Css.batch
        [ Css.property "margin-left" "1.75rem"
        , Css.property "margin-right" "1.75rem"
        ]


{-| This class has the effect of following css declaration:

```css
.mx-72 {
  margin-left: 18rem;
  margin-right: 18rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mx_72 : Css.Style
mx_72 =
    Css.batch
        [ Css.property "margin-left" "18rem"
        , Css.property "margin-right" "18rem"
        ]


{-| This class has the effect of following css declaration:

```css
.mx-8 {
  margin-left: 2rem;
  margin-right: 2rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mx_8 : Css.Style
mx_8 =
    Css.batch
        [ Css.property "margin-left" "2rem"
        , Css.property "margin-right" "2rem"
        ]


{-| This class has the effect of following css declaration:

```css
.mx-80 {
  margin-left: 20rem;
  margin-right: 20rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mx_80 : Css.Style
mx_80 =
    Css.batch
        [ Css.property "margin-left" "20rem"
        , Css.property "margin-right" "20rem"
        ]


{-| This class has the effect of following css declaration:

```css
.mx-9 {
  margin-left: 2.25rem;
  margin-right: 2.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mx_9 : Css.Style
mx_9 =
    Css.batch
        [ Css.property "margin-left" "2.25rem"
        , Css.property "margin-right" "2.25rem"
        ]


{-| This class has the effect of following css declaration:

```css
.mx-96 {
  margin-left: 24rem;
  margin-right: 24rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mx_96 : Css.Style
mx_96 =
    Css.batch
        [ Css.property "margin-left" "24rem"
        , Css.property "margin-right" "24rem"
        ]


{-| This class has the effect of following css declaration:

```css
.mx-auto {
  margin-left: auto;
  margin-right: auto
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mx_auto : Css.Style
mx_auto =
    Css.batch
        [ Css.property "margin-left" "auto"
        , Css.property "margin-right" "auto"
        ]


{-| This class has the effect of following css declaration:

```css
.mx-px {
  margin-left: 1px;
  margin-right: 1px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mx_px : Css.Style
mx_px =
    Css.batch
        [ Css.property "margin-left" "1px"
        , Css.property "margin-right" "1px"
        ]


{-| This class has the effect of following css declaration:

```css
.my-0 {
  margin-top: 0px;
  margin-bottom: 0px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
my_0 : Css.Style
my_0 =
    Css.batch
        [ Css.property "margin-top" "0px"
        , Css.property "margin-bottom" "0px"
        ]


{-| This class has the effect of following css declaration:

```css
.my-0\.5 {
  margin-top: 0.125rem;
  margin-bottom: 0.125rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
my_0_dot_5 : Css.Style
my_0_dot_5 =
    Css.batch
        [ Css.property "margin-top" "0.125rem"
        , Css.property "margin-bottom" "0.125rem"
        ]


{-| This class has the effect of following css declaration:

```css
.my-1 {
  margin-top: 0.25rem;
  margin-bottom: 0.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
my_1 : Css.Style
my_1 =
    Css.batch
        [ Css.property "margin-top" "0.25rem"
        , Css.property "margin-bottom" "0.25rem"
        ]


{-| This class has the effect of following css declaration:

```css
.my-10 {
  margin-top: 2.5rem;
  margin-bottom: 2.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
my_10 : Css.Style
my_10 =
    Css.batch
        [ Css.property "margin-top" "2.5rem"
        , Css.property "margin-bottom" "2.5rem"
        ]


{-| This class has the effect of following css declaration:

```css
.my-11 {
  margin-top: 2.75rem;
  margin-bottom: 2.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
my_11 : Css.Style
my_11 =
    Css.batch
        [ Css.property "margin-top" "2.75rem"
        , Css.property "margin-bottom" "2.75rem"
        ]


{-| This class has the effect of following css declaration:

```css
.my-12 {
  margin-top: 3rem;
  margin-bottom: 3rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
my_12 : Css.Style
my_12 =
    Css.batch
        [ Css.property "margin-top" "3rem"
        , Css.property "margin-bottom" "3rem"
        ]


{-| This class has the effect of following css declaration:

```css
.my-14 {
  margin-top: 3.5rem;
  margin-bottom: 3.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
my_14 : Css.Style
my_14 =
    Css.batch
        [ Css.property "margin-top" "3.5rem"
        , Css.property "margin-bottom" "3.5rem"
        ]


{-| This class has the effect of following css declaration:

```css
.my-16 {
  margin-top: 4rem;
  margin-bottom: 4rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
my_16 : Css.Style
my_16 =
    Css.batch
        [ Css.property "margin-top" "4rem"
        , Css.property "margin-bottom" "4rem"
        ]


{-| This class has the effect of following css declaration:

```css
.my-1\.5 {
  margin-top: 0.375rem;
  margin-bottom: 0.375rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
my_1_dot_5 : Css.Style
my_1_dot_5 =
    Css.batch
        [ Css.property "margin-top" "0.375rem"
        , Css.property "margin-bottom" "0.375rem"
        ]


{-| This class has the effect of following css declaration:

```css
.my-2 {
  margin-top: 0.5rem;
  margin-bottom: 0.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
my_2 : Css.Style
my_2 =
    Css.batch
        [ Css.property "margin-top" "0.5rem"
        , Css.property "margin-bottom" "0.5rem"
        ]


{-| This class has the effect of following css declaration:

```css
.my-20 {
  margin-top: 5rem;
  margin-bottom: 5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
my_20 : Css.Style
my_20 =
    Css.batch
        [ Css.property "margin-top" "5rem"
        , Css.property "margin-bottom" "5rem"
        ]


{-| This class has the effect of following css declaration:

```css
.my-24 {
  margin-top: 6rem;
  margin-bottom: 6rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
my_24 : Css.Style
my_24 =
    Css.batch
        [ Css.property "margin-top" "6rem"
        , Css.property "margin-bottom" "6rem"
        ]


{-| This class has the effect of following css declaration:

```css
.my-28 {
  margin-top: 7rem;
  margin-bottom: 7rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
my_28 : Css.Style
my_28 =
    Css.batch
        [ Css.property "margin-top" "7rem"
        , Css.property "margin-bottom" "7rem"
        ]


{-| This class has the effect of following css declaration:

```css
.my-2\.5 {
  margin-top: 0.625rem;
  margin-bottom: 0.625rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
my_2_dot_5 : Css.Style
my_2_dot_5 =
    Css.batch
        [ Css.property "margin-top" "0.625rem"
        , Css.property "margin-bottom" "0.625rem"
        ]


{-| This class has the effect of following css declaration:

```css
.my-3 {
  margin-top: 0.75rem;
  margin-bottom: 0.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
my_3 : Css.Style
my_3 =
    Css.batch
        [ Css.property "margin-top" "0.75rem"
        , Css.property "margin-bottom" "0.75rem"
        ]


{-| This class has the effect of following css declaration:

```css
.my-32 {
  margin-top: 8rem;
  margin-bottom: 8rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
my_32 : Css.Style
my_32 =
    Css.batch
        [ Css.property "margin-top" "8rem"
        , Css.property "margin-bottom" "8rem"
        ]


{-| This class has the effect of following css declaration:

```css
.my-36 {
  margin-top: 9rem;
  margin-bottom: 9rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
my_36 : Css.Style
my_36 =
    Css.batch
        [ Css.property "margin-top" "9rem"
        , Css.property "margin-bottom" "9rem"
        ]


{-| This class has the effect of following css declaration:

```css
.my-3\.5 {
  margin-top: 0.875rem;
  margin-bottom: 0.875rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
my_3_dot_5 : Css.Style
my_3_dot_5 =
    Css.batch
        [ Css.property "margin-top" "0.875rem"
        , Css.property "margin-bottom" "0.875rem"
        ]


{-| This class has the effect of following css declaration:

```css
.my-4 {
  margin-top: 1rem;
  margin-bottom: 1rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
my_4 : Css.Style
my_4 =
    Css.batch
        [ Css.property "margin-top" "1rem"
        , Css.property "margin-bottom" "1rem"
        ]


{-| This class has the effect of following css declaration:

```css
.my-40 {
  margin-top: 10rem;
  margin-bottom: 10rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
my_40 : Css.Style
my_40 =
    Css.batch
        [ Css.property "margin-top" "10rem"
        , Css.property "margin-bottom" "10rem"
        ]


{-| This class has the effect of following css declaration:

```css
.my-44 {
  margin-top: 11rem;
  margin-bottom: 11rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
my_44 : Css.Style
my_44 =
    Css.batch
        [ Css.property "margin-top" "11rem"
        , Css.property "margin-bottom" "11rem"
        ]


{-| This class has the effect of following css declaration:

```css
.my-48 {
  margin-top: 12rem;
  margin-bottom: 12rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
my_48 : Css.Style
my_48 =
    Css.batch
        [ Css.property "margin-top" "12rem"
        , Css.property "margin-bottom" "12rem"
        ]


{-| This class has the effect of following css declaration:

```css
.my-5 {
  margin-top: 1.25rem;
  margin-bottom: 1.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
my_5 : Css.Style
my_5 =
    Css.batch
        [ Css.property "margin-top" "1.25rem"
        , Css.property "margin-bottom" "1.25rem"
        ]


{-| This class has the effect of following css declaration:

```css
.my-52 {
  margin-top: 13rem;
  margin-bottom: 13rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
my_52 : Css.Style
my_52 =
    Css.batch
        [ Css.property "margin-top" "13rem"
        , Css.property "margin-bottom" "13rem"
        ]


{-| This class has the effect of following css declaration:

```css
.my-56 {
  margin-top: 14rem;
  margin-bottom: 14rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
my_56 : Css.Style
my_56 =
    Css.batch
        [ Css.property "margin-top" "14rem"
        , Css.property "margin-bottom" "14rem"
        ]


{-| This class has the effect of following css declaration:

```css
.my-6 {
  margin-top: 1.5rem;
  margin-bottom: 1.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
my_6 : Css.Style
my_6 =
    Css.batch
        [ Css.property "margin-top" "1.5rem"
        , Css.property "margin-bottom" "1.5rem"
        ]


{-| This class has the effect of following css declaration:

```css
.my-60 {
  margin-top: 15rem;
  margin-bottom: 15rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
my_60 : Css.Style
my_60 =
    Css.batch
        [ Css.property "margin-top" "15rem"
        , Css.property "margin-bottom" "15rem"
        ]


{-| This class has the effect of following css declaration:

```css
.my-64 {
  margin-top: 16rem;
  margin-bottom: 16rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
my_64 : Css.Style
my_64 =
    Css.batch
        [ Css.property "margin-top" "16rem"
        , Css.property "margin-bottom" "16rem"
        ]


{-| This class has the effect of following css declaration:

```css
.my-7 {
  margin-top: 1.75rem;
  margin-bottom: 1.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
my_7 : Css.Style
my_7 =
    Css.batch
        [ Css.property "margin-top" "1.75rem"
        , Css.property "margin-bottom" "1.75rem"
        ]


{-| This class has the effect of following css declaration:

```css
.my-72 {
  margin-top: 18rem;
  margin-bottom: 18rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
my_72 : Css.Style
my_72 =
    Css.batch
        [ Css.property "margin-top" "18rem"
        , Css.property "margin-bottom" "18rem"
        ]


{-| This class has the effect of following css declaration:

```css
.my-8 {
  margin-top: 2rem;
  margin-bottom: 2rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
my_8 : Css.Style
my_8 =
    Css.batch
        [ Css.property "margin-top" "2rem"
        , Css.property "margin-bottom" "2rem"
        ]


{-| This class has the effect of following css declaration:

```css
.my-80 {
  margin-top: 20rem;
  margin-bottom: 20rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
my_80 : Css.Style
my_80 =
    Css.batch
        [ Css.property "margin-top" "20rem"
        , Css.property "margin-bottom" "20rem"
        ]


{-| This class has the effect of following css declaration:

```css
.my-9 {
  margin-top: 2.25rem;
  margin-bottom: 2.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
my_9 : Css.Style
my_9 =
    Css.batch
        [ Css.property "margin-top" "2.25rem"
        , Css.property "margin-bottom" "2.25rem"
        ]


{-| This class has the effect of following css declaration:

```css
.my-96 {
  margin-top: 24rem;
  margin-bottom: 24rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
my_96 : Css.Style
my_96 =
    Css.batch
        [ Css.property "margin-top" "24rem"
        , Css.property "margin-bottom" "24rem"
        ]


{-| This class has the effect of following css declaration:

```css
.my-auto {
  margin-top: auto;
  margin-bottom: auto
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
my_auto : Css.Style
my_auto =
    Css.batch
        [ Css.property "margin-top" "auto"
        , Css.property "margin-bottom" "auto"
        ]


{-| This class has the effect of following css declaration:

```css
.my-px {
  margin-top: 1px;
  margin-bottom: 1px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
my_px : Css.Style
my_px =
    Css.batch
        [ Css.property "margin-top" "1px"
        , Css.property "margin-bottom" "1px"
        ]


{-| This class has the effect of following css declaration:

```css
.-backdrop-hue-rotate-15 {
  --tw-backdrop-hue-rotate: hue-rotate(-15deg)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_backdrop_hue_rotate_15 : Css.Style
neg_backdrop_hue_rotate_15 =
    Css.property "--tw-backdrop-hue-rotate" "hue-rotate(-15deg)"


{-| This class has the effect of following css declaration:

```css
.-backdrop-hue-rotate-180 {
  --tw-backdrop-hue-rotate: hue-rotate(-180deg)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_backdrop_hue_rotate_180 : Css.Style
neg_backdrop_hue_rotate_180 =
    Css.property "--tw-backdrop-hue-rotate" "hue-rotate(-180deg)"


{-| This class has the effect of following css declaration:

```css
.-backdrop-hue-rotate-30 {
  --tw-backdrop-hue-rotate: hue-rotate(-30deg)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_backdrop_hue_rotate_30 : Css.Style
neg_backdrop_hue_rotate_30 =
    Css.property "--tw-backdrop-hue-rotate" "hue-rotate(-30deg)"


{-| This class has the effect of following css declaration:

```css
.-backdrop-hue-rotate-60 {
  --tw-backdrop-hue-rotate: hue-rotate(-60deg)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_backdrop_hue_rotate_60 : Css.Style
neg_backdrop_hue_rotate_60 =
    Css.property "--tw-backdrop-hue-rotate" "hue-rotate(-60deg)"


{-| This class has the effect of following css declaration:

```css
.-backdrop-hue-rotate-90 {
  --tw-backdrop-hue-rotate: hue-rotate(-90deg)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_backdrop_hue_rotate_90 : Css.Style
neg_backdrop_hue_rotate_90 =
    Css.property "--tw-backdrop-hue-rotate" "hue-rotate(-90deg)"


{-| This class has the effect of following css declaration:

```css
.-bottom-0 {
  bottom: 0px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_bottom_0 : Css.Style
neg_bottom_0 =
    Css.property "bottom" "0px"


{-| This class has the effect of following css declaration:

```css
.-bottom-0\.5 {
  bottom: -0.125rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_bottom_0_dot_5 : Css.Style
neg_bottom_0_dot_5 =
    Css.property "bottom" "-0.125rem"


{-| This class has the effect of following css declaration:

```css
.-bottom-1 {
  bottom: -0.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_bottom_1 : Css.Style
neg_bottom_1 =
    Css.property "bottom" "-0.25rem"


{-| This class has the effect of following css declaration:

```css
.-bottom-10 {
  bottom: -2.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_bottom_10 : Css.Style
neg_bottom_10 =
    Css.property "bottom" "-2.5rem"


{-| This class has the effect of following css declaration:

```css
.-bottom-11 {
  bottom: -2.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_bottom_11 : Css.Style
neg_bottom_11 =
    Css.property "bottom" "-2.75rem"


{-| This class has the effect of following css declaration:

```css
.-bottom-12 {
  bottom: -3rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_bottom_12 : Css.Style
neg_bottom_12 =
    Css.property "bottom" "-3rem"


{-| This class has the effect of following css declaration:

```css
.-bottom-14 {
  bottom: -3.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_bottom_14 : Css.Style
neg_bottom_14 =
    Css.property "bottom" "-3.5rem"


{-| This class has the effect of following css declaration:

```css
.-bottom-16 {
  bottom: -4rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_bottom_16 : Css.Style
neg_bottom_16 =
    Css.property "bottom" "-4rem"


{-| This class has the effect of following css declaration:

```css
.-bottom-1\.5 {
  bottom: -0.375rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_bottom_1_dot_5 : Css.Style
neg_bottom_1_dot_5 =
    Css.property "bottom" "-0.375rem"


{-| This class has the effect of following css declaration:

```css
.-bottom-1\/2 {
  bottom: -50%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_bottom_1over2 : Css.Style
neg_bottom_1over2 =
    Css.property "bottom" "-50%"


{-| This class has the effect of following css declaration:

```css
.-bottom-1\/3 {
  bottom: -33.333333%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_bottom_1over3 : Css.Style
neg_bottom_1over3 =
    Css.property "bottom" "-33.333333%"


{-| This class has the effect of following css declaration:

```css
.-bottom-1\/4 {
  bottom: -25%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_bottom_1over4 : Css.Style
neg_bottom_1over4 =
    Css.property "bottom" "-25%"


{-| This class has the effect of following css declaration:

```css
.-bottom-2 {
  bottom: -0.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_bottom_2 : Css.Style
neg_bottom_2 =
    Css.property "bottom" "-0.5rem"


{-| This class has the effect of following css declaration:

```css
.-bottom-20 {
  bottom: -5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_bottom_20 : Css.Style
neg_bottom_20 =
    Css.property "bottom" "-5rem"


{-| This class has the effect of following css declaration:

```css
.-bottom-24 {
  bottom: -6rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_bottom_24 : Css.Style
neg_bottom_24 =
    Css.property "bottom" "-6rem"


{-| This class has the effect of following css declaration:

```css
.-bottom-28 {
  bottom: -7rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_bottom_28 : Css.Style
neg_bottom_28 =
    Css.property "bottom" "-7rem"


{-| This class has the effect of following css declaration:

```css
.-bottom-2\.5 {
  bottom: -0.625rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_bottom_2_dot_5 : Css.Style
neg_bottom_2_dot_5 =
    Css.property "bottom" "-0.625rem"


{-| This class has the effect of following css declaration:

```css
.-bottom-2\/3 {
  bottom: -66.666667%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_bottom_2over3 : Css.Style
neg_bottom_2over3 =
    Css.property "bottom" "-66.666667%"


{-| This class has the effect of following css declaration:

```css
.-bottom-2\/4 {
  bottom: -50%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_bottom_2over4 : Css.Style
neg_bottom_2over4 =
    Css.property "bottom" "-50%"


{-| This class has the effect of following css declaration:

```css
.-bottom-3 {
  bottom: -0.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_bottom_3 : Css.Style
neg_bottom_3 =
    Css.property "bottom" "-0.75rem"


{-| This class has the effect of following css declaration:

```css
.-bottom-32 {
  bottom: -8rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_bottom_32 : Css.Style
neg_bottom_32 =
    Css.property "bottom" "-8rem"


{-| This class has the effect of following css declaration:

```css
.-bottom-36 {
  bottom: -9rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_bottom_36 : Css.Style
neg_bottom_36 =
    Css.property "bottom" "-9rem"


{-| This class has the effect of following css declaration:

```css
.-bottom-3\.5 {
  bottom: -0.875rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_bottom_3_dot_5 : Css.Style
neg_bottom_3_dot_5 =
    Css.property "bottom" "-0.875rem"


{-| This class has the effect of following css declaration:

```css
.-bottom-3\/4 {
  bottom: -75%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_bottom_3over4 : Css.Style
neg_bottom_3over4 =
    Css.property "bottom" "-75%"


{-| This class has the effect of following css declaration:

```css
.-bottom-4 {
  bottom: -1rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_bottom_4 : Css.Style
neg_bottom_4 =
    Css.property "bottom" "-1rem"


{-| This class has the effect of following css declaration:

```css
.-bottom-40 {
  bottom: -10rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_bottom_40 : Css.Style
neg_bottom_40 =
    Css.property "bottom" "-10rem"


{-| This class has the effect of following css declaration:

```css
.-bottom-44 {
  bottom: -11rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_bottom_44 : Css.Style
neg_bottom_44 =
    Css.property "bottom" "-11rem"


{-| This class has the effect of following css declaration:

```css
.-bottom-48 {
  bottom: -12rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_bottom_48 : Css.Style
neg_bottom_48 =
    Css.property "bottom" "-12rem"


{-| This class has the effect of following css declaration:

```css
.-bottom-5 {
  bottom: -1.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_bottom_5 : Css.Style
neg_bottom_5 =
    Css.property "bottom" "-1.25rem"


{-| This class has the effect of following css declaration:

```css
.-bottom-52 {
  bottom: -13rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_bottom_52 : Css.Style
neg_bottom_52 =
    Css.property "bottom" "-13rem"


{-| This class has the effect of following css declaration:

```css
.-bottom-56 {
  bottom: -14rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_bottom_56 : Css.Style
neg_bottom_56 =
    Css.property "bottom" "-14rem"


{-| This class has the effect of following css declaration:

```css
.-bottom-6 {
  bottom: -1.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_bottom_6 : Css.Style
neg_bottom_6 =
    Css.property "bottom" "-1.5rem"


{-| This class has the effect of following css declaration:

```css
.-bottom-60 {
  bottom: -15rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_bottom_60 : Css.Style
neg_bottom_60 =
    Css.property "bottom" "-15rem"


{-| This class has the effect of following css declaration:

```css
.-bottom-64 {
  bottom: -16rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_bottom_64 : Css.Style
neg_bottom_64 =
    Css.property "bottom" "-16rem"


{-| This class has the effect of following css declaration:

```css
.-bottom-7 {
  bottom: -1.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_bottom_7 : Css.Style
neg_bottom_7 =
    Css.property "bottom" "-1.75rem"


{-| This class has the effect of following css declaration:

```css
.-bottom-72 {
  bottom: -18rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_bottom_72 : Css.Style
neg_bottom_72 =
    Css.property "bottom" "-18rem"


{-| This class has the effect of following css declaration:

```css
.-bottom-8 {
  bottom: -2rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_bottom_8 : Css.Style
neg_bottom_8 =
    Css.property "bottom" "-2rem"


{-| This class has the effect of following css declaration:

```css
.-bottom-80 {
  bottom: -20rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_bottom_80 : Css.Style
neg_bottom_80 =
    Css.property "bottom" "-20rem"


{-| This class has the effect of following css declaration:

```css
.-bottom-9 {
  bottom: -2.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_bottom_9 : Css.Style
neg_bottom_9 =
    Css.property "bottom" "-2.25rem"


{-| This class has the effect of following css declaration:

```css
.-bottom-96 {
  bottom: -24rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_bottom_96 : Css.Style
neg_bottom_96 =
    Css.property "bottom" "-24rem"


{-| This class has the effect of following css declaration:

```css
.-bottom-full {
  bottom: -100%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_bottom_full : Css.Style
neg_bottom_full =
    Css.property "bottom" "-100%"


{-| This class has the effect of following css declaration:

```css
.-bottom-px {
  bottom: -1px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_bottom_px : Css.Style
neg_bottom_px =
    Css.property "bottom" "-1px"


{-| This class has the effect of following css declaration:

```css
.-hue-rotate-15 {
  --tw-hue-rotate: hue-rotate(-15deg)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_hue_rotate_15 : Css.Style
neg_hue_rotate_15 =
    Css.property "--tw-hue-rotate" "hue-rotate(-15deg)"


{-| This class has the effect of following css declaration:

```css
.-hue-rotate-180 {
  --tw-hue-rotate: hue-rotate(-180deg)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_hue_rotate_180 : Css.Style
neg_hue_rotate_180 =
    Css.property "--tw-hue-rotate" "hue-rotate(-180deg)"


{-| This class has the effect of following css declaration:

```css
.-hue-rotate-30 {
  --tw-hue-rotate: hue-rotate(-30deg)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_hue_rotate_30 : Css.Style
neg_hue_rotate_30 =
    Css.property "--tw-hue-rotate" "hue-rotate(-30deg)"


{-| This class has the effect of following css declaration:

```css
.-hue-rotate-60 {
  --tw-hue-rotate: hue-rotate(-60deg)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_hue_rotate_60 : Css.Style
neg_hue_rotate_60 =
    Css.property "--tw-hue-rotate" "hue-rotate(-60deg)"


{-| This class has the effect of following css declaration:

```css
.-hue-rotate-90 {
  --tw-hue-rotate: hue-rotate(-90deg)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_hue_rotate_90 : Css.Style
neg_hue_rotate_90 =
    Css.property "--tw-hue-rotate" "hue-rotate(-90deg)"


{-| This class has the effect of following css declaration:

```css
.-inset-0 {
  top: 0px;
  right: 0px;
  bottom: 0px;
  left: 0px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_0 : Css.Style
neg_inset_0 =
    Css.batch
        [ Css.property "top" "0px"
        , Css.property "right" "0px"
        , Css.property "bottom" "0px"
        , Css.property "left" "0px"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-0\.5 {
  top: -0.125rem;
  right: -0.125rem;
  bottom: -0.125rem;
  left: -0.125rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_0_dot_5 : Css.Style
neg_inset_0_dot_5 =
    Css.batch
        [ Css.property "top" "-0.125rem"
        , Css.property "right" "-0.125rem"
        , Css.property "bottom" "-0.125rem"
        , Css.property "left" "-0.125rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-1 {
  top: -0.25rem;
  right: -0.25rem;
  bottom: -0.25rem;
  left: -0.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_1 : Css.Style
neg_inset_1 =
    Css.batch
        [ Css.property "top" "-0.25rem"
        , Css.property "right" "-0.25rem"
        , Css.property "bottom" "-0.25rem"
        , Css.property "left" "-0.25rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-10 {
  top: -2.5rem;
  right: -2.5rem;
  bottom: -2.5rem;
  left: -2.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_10 : Css.Style
neg_inset_10 =
    Css.batch
        [ Css.property "top" "-2.5rem"
        , Css.property "right" "-2.5rem"
        , Css.property "bottom" "-2.5rem"
        , Css.property "left" "-2.5rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-11 {
  top: -2.75rem;
  right: -2.75rem;
  bottom: -2.75rem;
  left: -2.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_11 : Css.Style
neg_inset_11 =
    Css.batch
        [ Css.property "top" "-2.75rem"
        , Css.property "right" "-2.75rem"
        , Css.property "bottom" "-2.75rem"
        , Css.property "left" "-2.75rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-12 {
  top: -3rem;
  right: -3rem;
  bottom: -3rem;
  left: -3rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_12 : Css.Style
neg_inset_12 =
    Css.batch
        [ Css.property "top" "-3rem"
        , Css.property "right" "-3rem"
        , Css.property "bottom" "-3rem"
        , Css.property "left" "-3rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-14 {
  top: -3.5rem;
  right: -3.5rem;
  bottom: -3.5rem;
  left: -3.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_14 : Css.Style
neg_inset_14 =
    Css.batch
        [ Css.property "top" "-3.5rem"
        , Css.property "right" "-3.5rem"
        , Css.property "bottom" "-3.5rem"
        , Css.property "left" "-3.5rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-16 {
  top: -4rem;
  right: -4rem;
  bottom: -4rem;
  left: -4rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_16 : Css.Style
neg_inset_16 =
    Css.batch
        [ Css.property "top" "-4rem"
        , Css.property "right" "-4rem"
        , Css.property "bottom" "-4rem"
        , Css.property "left" "-4rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-1\.5 {
  top: -0.375rem;
  right: -0.375rem;
  bottom: -0.375rem;
  left: -0.375rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_1_dot_5 : Css.Style
neg_inset_1_dot_5 =
    Css.batch
        [ Css.property "top" "-0.375rem"
        , Css.property "right" "-0.375rem"
        , Css.property "bottom" "-0.375rem"
        , Css.property "left" "-0.375rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-1\/2 {
  top: -50%;
  right: -50%;
  bottom: -50%;
  left: -50%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_1over2 : Css.Style
neg_inset_1over2 =
    Css.batch
        [ Css.property "top" "-50%"
        , Css.property "right" "-50%"
        , Css.property "bottom" "-50%"
        , Css.property "left" "-50%"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-1\/3 {
  top: -33.333333%;
  right: -33.333333%;
  bottom: -33.333333%;
  left: -33.333333%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_1over3 : Css.Style
neg_inset_1over3 =
    Css.batch
        [ Css.property "top" "-33.333333%"
        , Css.property "right" "-33.333333%"
        , Css.property "bottom" "-33.333333%"
        , Css.property "left" "-33.333333%"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-1\/4 {
  top: -25%;
  right: -25%;
  bottom: -25%;
  left: -25%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_1over4 : Css.Style
neg_inset_1over4 =
    Css.batch
        [ Css.property "top" "-25%"
        , Css.property "right" "-25%"
        , Css.property "bottom" "-25%"
        , Css.property "left" "-25%"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-2 {
  top: -0.5rem;
  right: -0.5rem;
  bottom: -0.5rem;
  left: -0.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_2 : Css.Style
neg_inset_2 =
    Css.batch
        [ Css.property "top" "-0.5rem"
        , Css.property "right" "-0.5rem"
        , Css.property "bottom" "-0.5rem"
        , Css.property "left" "-0.5rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-20 {
  top: -5rem;
  right: -5rem;
  bottom: -5rem;
  left: -5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_20 : Css.Style
neg_inset_20 =
    Css.batch
        [ Css.property "top" "-5rem"
        , Css.property "right" "-5rem"
        , Css.property "bottom" "-5rem"
        , Css.property "left" "-5rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-24 {
  top: -6rem;
  right: -6rem;
  bottom: -6rem;
  left: -6rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_24 : Css.Style
neg_inset_24 =
    Css.batch
        [ Css.property "top" "-6rem"
        , Css.property "right" "-6rem"
        , Css.property "bottom" "-6rem"
        , Css.property "left" "-6rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-28 {
  top: -7rem;
  right: -7rem;
  bottom: -7rem;
  left: -7rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_28 : Css.Style
neg_inset_28 =
    Css.batch
        [ Css.property "top" "-7rem"
        , Css.property "right" "-7rem"
        , Css.property "bottom" "-7rem"
        , Css.property "left" "-7rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-2\.5 {
  top: -0.625rem;
  right: -0.625rem;
  bottom: -0.625rem;
  left: -0.625rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_2_dot_5 : Css.Style
neg_inset_2_dot_5 =
    Css.batch
        [ Css.property "top" "-0.625rem"
        , Css.property "right" "-0.625rem"
        , Css.property "bottom" "-0.625rem"
        , Css.property "left" "-0.625rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-2\/3 {
  top: -66.666667%;
  right: -66.666667%;
  bottom: -66.666667%;
  left: -66.666667%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_2over3 : Css.Style
neg_inset_2over3 =
    Css.batch
        [ Css.property "top" "-66.666667%"
        , Css.property "right" "-66.666667%"
        , Css.property "bottom" "-66.666667%"
        , Css.property "left" "-66.666667%"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-2\/4 {
  top: -50%;
  right: -50%;
  bottom: -50%;
  left: -50%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_2over4 : Css.Style
neg_inset_2over4 =
    Css.batch
        [ Css.property "top" "-50%"
        , Css.property "right" "-50%"
        , Css.property "bottom" "-50%"
        , Css.property "left" "-50%"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-3 {
  top: -0.75rem;
  right: -0.75rem;
  bottom: -0.75rem;
  left: -0.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_3 : Css.Style
neg_inset_3 =
    Css.batch
        [ Css.property "top" "-0.75rem"
        , Css.property "right" "-0.75rem"
        , Css.property "bottom" "-0.75rem"
        , Css.property "left" "-0.75rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-32 {
  top: -8rem;
  right: -8rem;
  bottom: -8rem;
  left: -8rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_32 : Css.Style
neg_inset_32 =
    Css.batch
        [ Css.property "top" "-8rem"
        , Css.property "right" "-8rem"
        , Css.property "bottom" "-8rem"
        , Css.property "left" "-8rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-36 {
  top: -9rem;
  right: -9rem;
  bottom: -9rem;
  left: -9rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_36 : Css.Style
neg_inset_36 =
    Css.batch
        [ Css.property "top" "-9rem"
        , Css.property "right" "-9rem"
        , Css.property "bottom" "-9rem"
        , Css.property "left" "-9rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-3\.5 {
  top: -0.875rem;
  right: -0.875rem;
  bottom: -0.875rem;
  left: -0.875rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_3_dot_5 : Css.Style
neg_inset_3_dot_5 =
    Css.batch
        [ Css.property "top" "-0.875rem"
        , Css.property "right" "-0.875rem"
        , Css.property "bottom" "-0.875rem"
        , Css.property "left" "-0.875rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-3\/4 {
  top: -75%;
  right: -75%;
  bottom: -75%;
  left: -75%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_3over4 : Css.Style
neg_inset_3over4 =
    Css.batch
        [ Css.property "top" "-75%"
        , Css.property "right" "-75%"
        , Css.property "bottom" "-75%"
        , Css.property "left" "-75%"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-4 {
  top: -1rem;
  right: -1rem;
  bottom: -1rem;
  left: -1rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_4 : Css.Style
neg_inset_4 =
    Css.batch
        [ Css.property "top" "-1rem"
        , Css.property "right" "-1rem"
        , Css.property "bottom" "-1rem"
        , Css.property "left" "-1rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-40 {
  top: -10rem;
  right: -10rem;
  bottom: -10rem;
  left: -10rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_40 : Css.Style
neg_inset_40 =
    Css.batch
        [ Css.property "top" "-10rem"
        , Css.property "right" "-10rem"
        , Css.property "bottom" "-10rem"
        , Css.property "left" "-10rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-44 {
  top: -11rem;
  right: -11rem;
  bottom: -11rem;
  left: -11rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_44 : Css.Style
neg_inset_44 =
    Css.batch
        [ Css.property "top" "-11rem"
        , Css.property "right" "-11rem"
        , Css.property "bottom" "-11rem"
        , Css.property "left" "-11rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-48 {
  top: -12rem;
  right: -12rem;
  bottom: -12rem;
  left: -12rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_48 : Css.Style
neg_inset_48 =
    Css.batch
        [ Css.property "top" "-12rem"
        , Css.property "right" "-12rem"
        , Css.property "bottom" "-12rem"
        , Css.property "left" "-12rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-5 {
  top: -1.25rem;
  right: -1.25rem;
  bottom: -1.25rem;
  left: -1.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_5 : Css.Style
neg_inset_5 =
    Css.batch
        [ Css.property "top" "-1.25rem"
        , Css.property "right" "-1.25rem"
        , Css.property "bottom" "-1.25rem"
        , Css.property "left" "-1.25rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-52 {
  top: -13rem;
  right: -13rem;
  bottom: -13rem;
  left: -13rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_52 : Css.Style
neg_inset_52 =
    Css.batch
        [ Css.property "top" "-13rem"
        , Css.property "right" "-13rem"
        , Css.property "bottom" "-13rem"
        , Css.property "left" "-13rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-56 {
  top: -14rem;
  right: -14rem;
  bottom: -14rem;
  left: -14rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_56 : Css.Style
neg_inset_56 =
    Css.batch
        [ Css.property "top" "-14rem"
        , Css.property "right" "-14rem"
        , Css.property "bottom" "-14rem"
        , Css.property "left" "-14rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-6 {
  top: -1.5rem;
  right: -1.5rem;
  bottom: -1.5rem;
  left: -1.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_6 : Css.Style
neg_inset_6 =
    Css.batch
        [ Css.property "top" "-1.5rem"
        , Css.property "right" "-1.5rem"
        , Css.property "bottom" "-1.5rem"
        , Css.property "left" "-1.5rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-60 {
  top: -15rem;
  right: -15rem;
  bottom: -15rem;
  left: -15rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_60 : Css.Style
neg_inset_60 =
    Css.batch
        [ Css.property "top" "-15rem"
        , Css.property "right" "-15rem"
        , Css.property "bottom" "-15rem"
        , Css.property "left" "-15rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-64 {
  top: -16rem;
  right: -16rem;
  bottom: -16rem;
  left: -16rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_64 : Css.Style
neg_inset_64 =
    Css.batch
        [ Css.property "top" "-16rem"
        , Css.property "right" "-16rem"
        , Css.property "bottom" "-16rem"
        , Css.property "left" "-16rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-7 {
  top: -1.75rem;
  right: -1.75rem;
  bottom: -1.75rem;
  left: -1.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_7 : Css.Style
neg_inset_7 =
    Css.batch
        [ Css.property "top" "-1.75rem"
        , Css.property "right" "-1.75rem"
        , Css.property "bottom" "-1.75rem"
        , Css.property "left" "-1.75rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-72 {
  top: -18rem;
  right: -18rem;
  bottom: -18rem;
  left: -18rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_72 : Css.Style
neg_inset_72 =
    Css.batch
        [ Css.property "top" "-18rem"
        , Css.property "right" "-18rem"
        , Css.property "bottom" "-18rem"
        , Css.property "left" "-18rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-8 {
  top: -2rem;
  right: -2rem;
  bottom: -2rem;
  left: -2rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_8 : Css.Style
neg_inset_8 =
    Css.batch
        [ Css.property "top" "-2rem"
        , Css.property "right" "-2rem"
        , Css.property "bottom" "-2rem"
        , Css.property "left" "-2rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-80 {
  top: -20rem;
  right: -20rem;
  bottom: -20rem;
  left: -20rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_80 : Css.Style
neg_inset_80 =
    Css.batch
        [ Css.property "top" "-20rem"
        , Css.property "right" "-20rem"
        , Css.property "bottom" "-20rem"
        , Css.property "left" "-20rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-9 {
  top: -2.25rem;
  right: -2.25rem;
  bottom: -2.25rem;
  left: -2.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_9 : Css.Style
neg_inset_9 =
    Css.batch
        [ Css.property "top" "-2.25rem"
        , Css.property "right" "-2.25rem"
        , Css.property "bottom" "-2.25rem"
        , Css.property "left" "-2.25rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-96 {
  top: -24rem;
  right: -24rem;
  bottom: -24rem;
  left: -24rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_96 : Css.Style
neg_inset_96 =
    Css.batch
        [ Css.property "top" "-24rem"
        , Css.property "right" "-24rem"
        , Css.property "bottom" "-24rem"
        , Css.property "left" "-24rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-full {
  top: -100%;
  right: -100%;
  bottom: -100%;
  left: -100%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_full : Css.Style
neg_inset_full =
    Css.batch
        [ Css.property "top" "-100%"
        , Css.property "right" "-100%"
        , Css.property "bottom" "-100%"
        , Css.property "left" "-100%"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-px {
  top: -1px;
  right: -1px;
  bottom: -1px;
  left: -1px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_px : Css.Style
neg_inset_px =
    Css.batch
        [ Css.property "top" "-1px"
        , Css.property "right" "-1px"
        , Css.property "bottom" "-1px"
        , Css.property "left" "-1px"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-x-0 {
  right: 0px;
  left: 0px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_x_0 : Css.Style
neg_inset_x_0 =
    Css.batch
        [ Css.property "right" "0px"
        , Css.property "left" "0px"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-x-0\.5 {
  right: -0.125rem;
  left: -0.125rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_x_0_dot_5 : Css.Style
neg_inset_x_0_dot_5 =
    Css.batch
        [ Css.property "right" "-0.125rem"
        , Css.property "left" "-0.125rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-x-1 {
  right: -0.25rem;
  left: -0.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_x_1 : Css.Style
neg_inset_x_1 =
    Css.batch
        [ Css.property "right" "-0.25rem"
        , Css.property "left" "-0.25rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-x-10 {
  right: -2.5rem;
  left: -2.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_x_10 : Css.Style
neg_inset_x_10 =
    Css.batch
        [ Css.property "right" "-2.5rem"
        , Css.property "left" "-2.5rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-x-11 {
  right: -2.75rem;
  left: -2.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_x_11 : Css.Style
neg_inset_x_11 =
    Css.batch
        [ Css.property "right" "-2.75rem"
        , Css.property "left" "-2.75rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-x-12 {
  right: -3rem;
  left: -3rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_x_12 : Css.Style
neg_inset_x_12 =
    Css.batch
        [ Css.property "right" "-3rem"
        , Css.property "left" "-3rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-x-14 {
  right: -3.5rem;
  left: -3.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_x_14 : Css.Style
neg_inset_x_14 =
    Css.batch
        [ Css.property "right" "-3.5rem"
        , Css.property "left" "-3.5rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-x-16 {
  right: -4rem;
  left: -4rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_x_16 : Css.Style
neg_inset_x_16 =
    Css.batch
        [ Css.property "right" "-4rem"
        , Css.property "left" "-4rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-x-1\.5 {
  right: -0.375rem;
  left: -0.375rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_x_1_dot_5 : Css.Style
neg_inset_x_1_dot_5 =
    Css.batch
        [ Css.property "right" "-0.375rem"
        , Css.property "left" "-0.375rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-x-1\/2 {
  right: -50%;
  left: -50%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_x_1over2 : Css.Style
neg_inset_x_1over2 =
    Css.batch
        [ Css.property "right" "-50%"
        , Css.property "left" "-50%"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-x-1\/3 {
  right: -33.333333%;
  left: -33.333333%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_x_1over3 : Css.Style
neg_inset_x_1over3 =
    Css.batch
        [ Css.property "right" "-33.333333%"
        , Css.property "left" "-33.333333%"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-x-1\/4 {
  right: -25%;
  left: -25%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_x_1over4 : Css.Style
neg_inset_x_1over4 =
    Css.batch
        [ Css.property "right" "-25%"
        , Css.property "left" "-25%"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-x-2 {
  right: -0.5rem;
  left: -0.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_x_2 : Css.Style
neg_inset_x_2 =
    Css.batch
        [ Css.property "right" "-0.5rem"
        , Css.property "left" "-0.5rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-x-20 {
  right: -5rem;
  left: -5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_x_20 : Css.Style
neg_inset_x_20 =
    Css.batch
        [ Css.property "right" "-5rem"
        , Css.property "left" "-5rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-x-24 {
  right: -6rem;
  left: -6rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_x_24 : Css.Style
neg_inset_x_24 =
    Css.batch
        [ Css.property "right" "-6rem"
        , Css.property "left" "-6rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-x-28 {
  right: -7rem;
  left: -7rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_x_28 : Css.Style
neg_inset_x_28 =
    Css.batch
        [ Css.property "right" "-7rem"
        , Css.property "left" "-7rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-x-2\.5 {
  right: -0.625rem;
  left: -0.625rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_x_2_dot_5 : Css.Style
neg_inset_x_2_dot_5 =
    Css.batch
        [ Css.property "right" "-0.625rem"
        , Css.property "left" "-0.625rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-x-2\/3 {
  right: -66.666667%;
  left: -66.666667%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_x_2over3 : Css.Style
neg_inset_x_2over3 =
    Css.batch
        [ Css.property "right" "-66.666667%"
        , Css.property "left" "-66.666667%"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-x-2\/4 {
  right: -50%;
  left: -50%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_x_2over4 : Css.Style
neg_inset_x_2over4 =
    Css.batch
        [ Css.property "right" "-50%"
        , Css.property "left" "-50%"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-x-3 {
  right: -0.75rem;
  left: -0.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_x_3 : Css.Style
neg_inset_x_3 =
    Css.batch
        [ Css.property "right" "-0.75rem"
        , Css.property "left" "-0.75rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-x-32 {
  right: -8rem;
  left: -8rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_x_32 : Css.Style
neg_inset_x_32 =
    Css.batch
        [ Css.property "right" "-8rem"
        , Css.property "left" "-8rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-x-36 {
  right: -9rem;
  left: -9rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_x_36 : Css.Style
neg_inset_x_36 =
    Css.batch
        [ Css.property "right" "-9rem"
        , Css.property "left" "-9rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-x-3\.5 {
  right: -0.875rem;
  left: -0.875rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_x_3_dot_5 : Css.Style
neg_inset_x_3_dot_5 =
    Css.batch
        [ Css.property "right" "-0.875rem"
        , Css.property "left" "-0.875rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-x-3\/4 {
  right: -75%;
  left: -75%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_x_3over4 : Css.Style
neg_inset_x_3over4 =
    Css.batch
        [ Css.property "right" "-75%"
        , Css.property "left" "-75%"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-x-4 {
  right: -1rem;
  left: -1rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_x_4 : Css.Style
neg_inset_x_4 =
    Css.batch
        [ Css.property "right" "-1rem"
        , Css.property "left" "-1rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-x-40 {
  right: -10rem;
  left: -10rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_x_40 : Css.Style
neg_inset_x_40 =
    Css.batch
        [ Css.property "right" "-10rem"
        , Css.property "left" "-10rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-x-44 {
  right: -11rem;
  left: -11rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_x_44 : Css.Style
neg_inset_x_44 =
    Css.batch
        [ Css.property "right" "-11rem"
        , Css.property "left" "-11rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-x-48 {
  right: -12rem;
  left: -12rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_x_48 : Css.Style
neg_inset_x_48 =
    Css.batch
        [ Css.property "right" "-12rem"
        , Css.property "left" "-12rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-x-5 {
  right: -1.25rem;
  left: -1.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_x_5 : Css.Style
neg_inset_x_5 =
    Css.batch
        [ Css.property "right" "-1.25rem"
        , Css.property "left" "-1.25rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-x-52 {
  right: -13rem;
  left: -13rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_x_52 : Css.Style
neg_inset_x_52 =
    Css.batch
        [ Css.property "right" "-13rem"
        , Css.property "left" "-13rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-x-56 {
  right: -14rem;
  left: -14rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_x_56 : Css.Style
neg_inset_x_56 =
    Css.batch
        [ Css.property "right" "-14rem"
        , Css.property "left" "-14rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-x-6 {
  right: -1.5rem;
  left: -1.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_x_6 : Css.Style
neg_inset_x_6 =
    Css.batch
        [ Css.property "right" "-1.5rem"
        , Css.property "left" "-1.5rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-x-60 {
  right: -15rem;
  left: -15rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_x_60 : Css.Style
neg_inset_x_60 =
    Css.batch
        [ Css.property "right" "-15rem"
        , Css.property "left" "-15rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-x-64 {
  right: -16rem;
  left: -16rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_x_64 : Css.Style
neg_inset_x_64 =
    Css.batch
        [ Css.property "right" "-16rem"
        , Css.property "left" "-16rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-x-7 {
  right: -1.75rem;
  left: -1.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_x_7 : Css.Style
neg_inset_x_7 =
    Css.batch
        [ Css.property "right" "-1.75rem"
        , Css.property "left" "-1.75rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-x-72 {
  right: -18rem;
  left: -18rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_x_72 : Css.Style
neg_inset_x_72 =
    Css.batch
        [ Css.property "right" "-18rem"
        , Css.property "left" "-18rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-x-8 {
  right: -2rem;
  left: -2rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_x_8 : Css.Style
neg_inset_x_8 =
    Css.batch
        [ Css.property "right" "-2rem"
        , Css.property "left" "-2rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-x-80 {
  right: -20rem;
  left: -20rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_x_80 : Css.Style
neg_inset_x_80 =
    Css.batch
        [ Css.property "right" "-20rem"
        , Css.property "left" "-20rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-x-9 {
  right: -2.25rem;
  left: -2.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_x_9 : Css.Style
neg_inset_x_9 =
    Css.batch
        [ Css.property "right" "-2.25rem"
        , Css.property "left" "-2.25rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-x-96 {
  right: -24rem;
  left: -24rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_x_96 : Css.Style
neg_inset_x_96 =
    Css.batch
        [ Css.property "right" "-24rem"
        , Css.property "left" "-24rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-x-full {
  right: -100%;
  left: -100%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_x_full : Css.Style
neg_inset_x_full =
    Css.batch
        [ Css.property "right" "-100%"
        , Css.property "left" "-100%"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-x-px {
  right: -1px;
  left: -1px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_x_px : Css.Style
neg_inset_x_px =
    Css.batch
        [ Css.property "right" "-1px"
        , Css.property "left" "-1px"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-y-0 {
  top: 0px;
  bottom: 0px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_y_0 : Css.Style
neg_inset_y_0 =
    Css.batch
        [ Css.property "top" "0px"
        , Css.property "bottom" "0px"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-y-0\.5 {
  top: -0.125rem;
  bottom: -0.125rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_y_0_dot_5 : Css.Style
neg_inset_y_0_dot_5 =
    Css.batch
        [ Css.property "top" "-0.125rem"
        , Css.property "bottom" "-0.125rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-y-1 {
  top: -0.25rem;
  bottom: -0.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_y_1 : Css.Style
neg_inset_y_1 =
    Css.batch
        [ Css.property "top" "-0.25rem"
        , Css.property "bottom" "-0.25rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-y-10 {
  top: -2.5rem;
  bottom: -2.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_y_10 : Css.Style
neg_inset_y_10 =
    Css.batch
        [ Css.property "top" "-2.5rem"
        , Css.property "bottom" "-2.5rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-y-11 {
  top: -2.75rem;
  bottom: -2.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_y_11 : Css.Style
neg_inset_y_11 =
    Css.batch
        [ Css.property "top" "-2.75rem"
        , Css.property "bottom" "-2.75rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-y-12 {
  top: -3rem;
  bottom: -3rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_y_12 : Css.Style
neg_inset_y_12 =
    Css.batch
        [ Css.property "top" "-3rem"
        , Css.property "bottom" "-3rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-y-14 {
  top: -3.5rem;
  bottom: -3.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_y_14 : Css.Style
neg_inset_y_14 =
    Css.batch
        [ Css.property "top" "-3.5rem"
        , Css.property "bottom" "-3.5rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-y-16 {
  top: -4rem;
  bottom: -4rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_y_16 : Css.Style
neg_inset_y_16 =
    Css.batch
        [ Css.property "top" "-4rem"
        , Css.property "bottom" "-4rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-y-1\.5 {
  top: -0.375rem;
  bottom: -0.375rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_y_1_dot_5 : Css.Style
neg_inset_y_1_dot_5 =
    Css.batch
        [ Css.property "top" "-0.375rem"
        , Css.property "bottom" "-0.375rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-y-1\/2 {
  top: -50%;
  bottom: -50%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_y_1over2 : Css.Style
neg_inset_y_1over2 =
    Css.batch
        [ Css.property "top" "-50%"
        , Css.property "bottom" "-50%"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-y-1\/3 {
  top: -33.333333%;
  bottom: -33.333333%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_y_1over3 : Css.Style
neg_inset_y_1over3 =
    Css.batch
        [ Css.property "top" "-33.333333%"
        , Css.property "bottom" "-33.333333%"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-y-1\/4 {
  top: -25%;
  bottom: -25%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_y_1over4 : Css.Style
neg_inset_y_1over4 =
    Css.batch
        [ Css.property "top" "-25%"
        , Css.property "bottom" "-25%"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-y-2 {
  top: -0.5rem;
  bottom: -0.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_y_2 : Css.Style
neg_inset_y_2 =
    Css.batch
        [ Css.property "top" "-0.5rem"
        , Css.property "bottom" "-0.5rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-y-20 {
  top: -5rem;
  bottom: -5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_y_20 : Css.Style
neg_inset_y_20 =
    Css.batch
        [ Css.property "top" "-5rem"
        , Css.property "bottom" "-5rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-y-24 {
  top: -6rem;
  bottom: -6rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_y_24 : Css.Style
neg_inset_y_24 =
    Css.batch
        [ Css.property "top" "-6rem"
        , Css.property "bottom" "-6rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-y-28 {
  top: -7rem;
  bottom: -7rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_y_28 : Css.Style
neg_inset_y_28 =
    Css.batch
        [ Css.property "top" "-7rem"
        , Css.property "bottom" "-7rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-y-2\.5 {
  top: -0.625rem;
  bottom: -0.625rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_y_2_dot_5 : Css.Style
neg_inset_y_2_dot_5 =
    Css.batch
        [ Css.property "top" "-0.625rem"
        , Css.property "bottom" "-0.625rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-y-2\/3 {
  top: -66.666667%;
  bottom: -66.666667%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_y_2over3 : Css.Style
neg_inset_y_2over3 =
    Css.batch
        [ Css.property "top" "-66.666667%"
        , Css.property "bottom" "-66.666667%"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-y-2\/4 {
  top: -50%;
  bottom: -50%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_y_2over4 : Css.Style
neg_inset_y_2over4 =
    Css.batch
        [ Css.property "top" "-50%"
        , Css.property "bottom" "-50%"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-y-3 {
  top: -0.75rem;
  bottom: -0.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_y_3 : Css.Style
neg_inset_y_3 =
    Css.batch
        [ Css.property "top" "-0.75rem"
        , Css.property "bottom" "-0.75rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-y-32 {
  top: -8rem;
  bottom: -8rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_y_32 : Css.Style
neg_inset_y_32 =
    Css.batch
        [ Css.property "top" "-8rem"
        , Css.property "bottom" "-8rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-y-36 {
  top: -9rem;
  bottom: -9rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_y_36 : Css.Style
neg_inset_y_36 =
    Css.batch
        [ Css.property "top" "-9rem"
        , Css.property "bottom" "-9rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-y-3\.5 {
  top: -0.875rem;
  bottom: -0.875rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_y_3_dot_5 : Css.Style
neg_inset_y_3_dot_5 =
    Css.batch
        [ Css.property "top" "-0.875rem"
        , Css.property "bottom" "-0.875rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-y-3\/4 {
  top: -75%;
  bottom: -75%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_y_3over4 : Css.Style
neg_inset_y_3over4 =
    Css.batch
        [ Css.property "top" "-75%"
        , Css.property "bottom" "-75%"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-y-4 {
  top: -1rem;
  bottom: -1rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_y_4 : Css.Style
neg_inset_y_4 =
    Css.batch
        [ Css.property "top" "-1rem"
        , Css.property "bottom" "-1rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-y-40 {
  top: -10rem;
  bottom: -10rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_y_40 : Css.Style
neg_inset_y_40 =
    Css.batch
        [ Css.property "top" "-10rem"
        , Css.property "bottom" "-10rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-y-44 {
  top: -11rem;
  bottom: -11rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_y_44 : Css.Style
neg_inset_y_44 =
    Css.batch
        [ Css.property "top" "-11rem"
        , Css.property "bottom" "-11rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-y-48 {
  top: -12rem;
  bottom: -12rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_y_48 : Css.Style
neg_inset_y_48 =
    Css.batch
        [ Css.property "top" "-12rem"
        , Css.property "bottom" "-12rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-y-5 {
  top: -1.25rem;
  bottom: -1.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_y_5 : Css.Style
neg_inset_y_5 =
    Css.batch
        [ Css.property "top" "-1.25rem"
        , Css.property "bottom" "-1.25rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-y-52 {
  top: -13rem;
  bottom: -13rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_y_52 : Css.Style
neg_inset_y_52 =
    Css.batch
        [ Css.property "top" "-13rem"
        , Css.property "bottom" "-13rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-y-56 {
  top: -14rem;
  bottom: -14rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_y_56 : Css.Style
neg_inset_y_56 =
    Css.batch
        [ Css.property "top" "-14rem"
        , Css.property "bottom" "-14rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-y-6 {
  top: -1.5rem;
  bottom: -1.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_y_6 : Css.Style
neg_inset_y_6 =
    Css.batch
        [ Css.property "top" "-1.5rem"
        , Css.property "bottom" "-1.5rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-y-60 {
  top: -15rem;
  bottom: -15rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_y_60 : Css.Style
neg_inset_y_60 =
    Css.batch
        [ Css.property "top" "-15rem"
        , Css.property "bottom" "-15rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-y-64 {
  top: -16rem;
  bottom: -16rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_y_64 : Css.Style
neg_inset_y_64 =
    Css.batch
        [ Css.property "top" "-16rem"
        , Css.property "bottom" "-16rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-y-7 {
  top: -1.75rem;
  bottom: -1.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_y_7 : Css.Style
neg_inset_y_7 =
    Css.batch
        [ Css.property "top" "-1.75rem"
        , Css.property "bottom" "-1.75rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-y-72 {
  top: -18rem;
  bottom: -18rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_y_72 : Css.Style
neg_inset_y_72 =
    Css.batch
        [ Css.property "top" "-18rem"
        , Css.property "bottom" "-18rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-y-8 {
  top: -2rem;
  bottom: -2rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_y_8 : Css.Style
neg_inset_y_8 =
    Css.batch
        [ Css.property "top" "-2rem"
        , Css.property "bottom" "-2rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-y-80 {
  top: -20rem;
  bottom: -20rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_y_80 : Css.Style
neg_inset_y_80 =
    Css.batch
        [ Css.property "top" "-20rem"
        , Css.property "bottom" "-20rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-y-9 {
  top: -2.25rem;
  bottom: -2.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_y_9 : Css.Style
neg_inset_y_9 =
    Css.batch
        [ Css.property "top" "-2.25rem"
        , Css.property "bottom" "-2.25rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-y-96 {
  top: -24rem;
  bottom: -24rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_y_96 : Css.Style
neg_inset_y_96 =
    Css.batch
        [ Css.property "top" "-24rem"
        , Css.property "bottom" "-24rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-y-full {
  top: -100%;
  bottom: -100%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_y_full : Css.Style
neg_inset_y_full =
    Css.batch
        [ Css.property "top" "-100%"
        , Css.property "bottom" "-100%"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-y-px {
  top: -1px;
  bottom: -1px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_y_px : Css.Style
neg_inset_y_px =
    Css.batch
        [ Css.property "top" "-1px"
        , Css.property "bottom" "-1px"
        ]


{-| This class has the effect of following css declaration:

```css
.-left-0 {
  left: 0px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_left_0 : Css.Style
neg_left_0 =
    Css.property "left" "0px"


{-| This class has the effect of following css declaration:

```css
.-left-0\.5 {
  left: -0.125rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_left_0_dot_5 : Css.Style
neg_left_0_dot_5 =
    Css.property "left" "-0.125rem"


{-| This class has the effect of following css declaration:

```css
.-left-1 {
  left: -0.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_left_1 : Css.Style
neg_left_1 =
    Css.property "left" "-0.25rem"


{-| This class has the effect of following css declaration:

```css
.-left-10 {
  left: -2.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_left_10 : Css.Style
neg_left_10 =
    Css.property "left" "-2.5rem"


{-| This class has the effect of following css declaration:

```css
.-left-11 {
  left: -2.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_left_11 : Css.Style
neg_left_11 =
    Css.property "left" "-2.75rem"


{-| This class has the effect of following css declaration:

```css
.-left-12 {
  left: -3rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_left_12 : Css.Style
neg_left_12 =
    Css.property "left" "-3rem"


{-| This class has the effect of following css declaration:

```css
.-left-14 {
  left: -3.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_left_14 : Css.Style
neg_left_14 =
    Css.property "left" "-3.5rem"


{-| This class has the effect of following css declaration:

```css
.-left-16 {
  left: -4rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_left_16 : Css.Style
neg_left_16 =
    Css.property "left" "-4rem"


{-| This class has the effect of following css declaration:

```css
.-left-1\.5 {
  left: -0.375rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_left_1_dot_5 : Css.Style
neg_left_1_dot_5 =
    Css.property "left" "-0.375rem"


{-| This class has the effect of following css declaration:

```css
.-left-1\/2 {
  left: -50%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_left_1over2 : Css.Style
neg_left_1over2 =
    Css.property "left" "-50%"


{-| This class has the effect of following css declaration:

```css
.-left-1\/3 {
  left: -33.333333%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_left_1over3 : Css.Style
neg_left_1over3 =
    Css.property "left" "-33.333333%"


{-| This class has the effect of following css declaration:

```css
.-left-1\/4 {
  left: -25%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_left_1over4 : Css.Style
neg_left_1over4 =
    Css.property "left" "-25%"


{-| This class has the effect of following css declaration:

```css
.-left-2 {
  left: -0.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_left_2 : Css.Style
neg_left_2 =
    Css.property "left" "-0.5rem"


{-| This class has the effect of following css declaration:

```css
.-left-20 {
  left: -5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_left_20 : Css.Style
neg_left_20 =
    Css.property "left" "-5rem"


{-| This class has the effect of following css declaration:

```css
.-left-24 {
  left: -6rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_left_24 : Css.Style
neg_left_24 =
    Css.property "left" "-6rem"


{-| This class has the effect of following css declaration:

```css
.-left-28 {
  left: -7rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_left_28 : Css.Style
neg_left_28 =
    Css.property "left" "-7rem"


{-| This class has the effect of following css declaration:

```css
.-left-2\.5 {
  left: -0.625rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_left_2_dot_5 : Css.Style
neg_left_2_dot_5 =
    Css.property "left" "-0.625rem"


{-| This class has the effect of following css declaration:

```css
.-left-2\/3 {
  left: -66.666667%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_left_2over3 : Css.Style
neg_left_2over3 =
    Css.property "left" "-66.666667%"


{-| This class has the effect of following css declaration:

```css
.-left-2\/4 {
  left: -50%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_left_2over4 : Css.Style
neg_left_2over4 =
    Css.property "left" "-50%"


{-| This class has the effect of following css declaration:

```css
.-left-3 {
  left: -0.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_left_3 : Css.Style
neg_left_3 =
    Css.property "left" "-0.75rem"


{-| This class has the effect of following css declaration:

```css
.-left-32 {
  left: -8rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_left_32 : Css.Style
neg_left_32 =
    Css.property "left" "-8rem"


{-| This class has the effect of following css declaration:

```css
.-left-36 {
  left: -9rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_left_36 : Css.Style
neg_left_36 =
    Css.property "left" "-9rem"


{-| This class has the effect of following css declaration:

```css
.-left-3\.5 {
  left: -0.875rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_left_3_dot_5 : Css.Style
neg_left_3_dot_5 =
    Css.property "left" "-0.875rem"


{-| This class has the effect of following css declaration:

```css
.-left-3\/4 {
  left: -75%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_left_3over4 : Css.Style
neg_left_3over4 =
    Css.property "left" "-75%"


{-| This class has the effect of following css declaration:

```css
.-left-4 {
  left: -1rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_left_4 : Css.Style
neg_left_4 =
    Css.property "left" "-1rem"


{-| This class has the effect of following css declaration:

```css
.-left-40 {
  left: -10rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_left_40 : Css.Style
neg_left_40 =
    Css.property "left" "-10rem"


{-| This class has the effect of following css declaration:

```css
.-left-44 {
  left: -11rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_left_44 : Css.Style
neg_left_44 =
    Css.property "left" "-11rem"


{-| This class has the effect of following css declaration:

```css
.-left-48 {
  left: -12rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_left_48 : Css.Style
neg_left_48 =
    Css.property "left" "-12rem"


{-| This class has the effect of following css declaration:

```css
.-left-5 {
  left: -1.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_left_5 : Css.Style
neg_left_5 =
    Css.property "left" "-1.25rem"


{-| This class has the effect of following css declaration:

```css
.-left-52 {
  left: -13rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_left_52 : Css.Style
neg_left_52 =
    Css.property "left" "-13rem"


{-| This class has the effect of following css declaration:

```css
.-left-56 {
  left: -14rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_left_56 : Css.Style
neg_left_56 =
    Css.property "left" "-14rem"


{-| This class has the effect of following css declaration:

```css
.-left-6 {
  left: -1.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_left_6 : Css.Style
neg_left_6 =
    Css.property "left" "-1.5rem"


{-| This class has the effect of following css declaration:

```css
.-left-60 {
  left: -15rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_left_60 : Css.Style
neg_left_60 =
    Css.property "left" "-15rem"


{-| This class has the effect of following css declaration:

```css
.-left-64 {
  left: -16rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_left_64 : Css.Style
neg_left_64 =
    Css.property "left" "-16rem"


{-| This class has the effect of following css declaration:

```css
.-left-7 {
  left: -1.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_left_7 : Css.Style
neg_left_7 =
    Css.property "left" "-1.75rem"


{-| This class has the effect of following css declaration:

```css
.-left-72 {
  left: -18rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_left_72 : Css.Style
neg_left_72 =
    Css.property "left" "-18rem"


{-| This class has the effect of following css declaration:

```css
.-left-8 {
  left: -2rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_left_8 : Css.Style
neg_left_8 =
    Css.property "left" "-2rem"


{-| This class has the effect of following css declaration:

```css
.-left-80 {
  left: -20rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_left_80 : Css.Style
neg_left_80 =
    Css.property "left" "-20rem"


{-| This class has the effect of following css declaration:

```css
.-left-9 {
  left: -2.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_left_9 : Css.Style
neg_left_9 =
    Css.property "left" "-2.25rem"


{-| This class has the effect of following css declaration:

```css
.-left-96 {
  left: -24rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_left_96 : Css.Style
neg_left_96 =
    Css.property "left" "-24rem"


{-| This class has the effect of following css declaration:

```css
.-left-full {
  left: -100%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_left_full : Css.Style
neg_left_full =
    Css.property "left" "-100%"


{-| This class has the effect of following css declaration:

```css
.-left-px {
  left: -1px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_left_px : Css.Style
neg_left_px =
    Css.property "left" "-1px"


{-| This class has the effect of following css declaration:

```css
.-m-0 {
  margin: 0px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_m_0 : Css.Style
neg_m_0 =
    Css.property "margin" "0px"


{-| This class has the effect of following css declaration:

```css
.-m-0\.5 {
  margin: -0.125rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_m_0_dot_5 : Css.Style
neg_m_0_dot_5 =
    Css.property "margin" "-0.125rem"


{-| This class has the effect of following css declaration:

```css
.-m-1 {
  margin: -0.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_m_1 : Css.Style
neg_m_1 =
    Css.property "margin" "-0.25rem"


{-| This class has the effect of following css declaration:

```css
.-m-10 {
  margin: -2.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_m_10 : Css.Style
neg_m_10 =
    Css.property "margin" "-2.5rem"


{-| This class has the effect of following css declaration:

```css
.-m-11 {
  margin: -2.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_m_11 : Css.Style
neg_m_11 =
    Css.property "margin" "-2.75rem"


{-| This class has the effect of following css declaration:

```css
.-m-12 {
  margin: -3rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_m_12 : Css.Style
neg_m_12 =
    Css.property "margin" "-3rem"


{-| This class has the effect of following css declaration:

```css
.-m-14 {
  margin: -3.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_m_14 : Css.Style
neg_m_14 =
    Css.property "margin" "-3.5rem"


{-| This class has the effect of following css declaration:

```css
.-m-16 {
  margin: -4rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_m_16 : Css.Style
neg_m_16 =
    Css.property "margin" "-4rem"


{-| This class has the effect of following css declaration:

```css
.-m-1\.5 {
  margin: -0.375rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_m_1_dot_5 : Css.Style
neg_m_1_dot_5 =
    Css.property "margin" "-0.375rem"


{-| This class has the effect of following css declaration:

```css
.-m-2 {
  margin: -0.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_m_2 : Css.Style
neg_m_2 =
    Css.property "margin" "-0.5rem"


{-| This class has the effect of following css declaration:

```css
.-m-20 {
  margin: -5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_m_20 : Css.Style
neg_m_20 =
    Css.property "margin" "-5rem"


{-| This class has the effect of following css declaration:

```css
.-m-24 {
  margin: -6rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_m_24 : Css.Style
neg_m_24 =
    Css.property "margin" "-6rem"


{-| This class has the effect of following css declaration:

```css
.-m-28 {
  margin: -7rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_m_28 : Css.Style
neg_m_28 =
    Css.property "margin" "-7rem"


{-| This class has the effect of following css declaration:

```css
.-m-2\.5 {
  margin: -0.625rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_m_2_dot_5 : Css.Style
neg_m_2_dot_5 =
    Css.property "margin" "-0.625rem"


{-| This class has the effect of following css declaration:

```css
.-m-3 {
  margin: -0.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_m_3 : Css.Style
neg_m_3 =
    Css.property "margin" "-0.75rem"


{-| This class has the effect of following css declaration:

```css
.-m-32 {
  margin: -8rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_m_32 : Css.Style
neg_m_32 =
    Css.property "margin" "-8rem"


{-| This class has the effect of following css declaration:

```css
.-m-36 {
  margin: -9rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_m_36 : Css.Style
neg_m_36 =
    Css.property "margin" "-9rem"


{-| This class has the effect of following css declaration:

```css
.-m-3\.5 {
  margin: -0.875rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_m_3_dot_5 : Css.Style
neg_m_3_dot_5 =
    Css.property "margin" "-0.875rem"


{-| This class has the effect of following css declaration:

```css
.-m-4 {
  margin: -1rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_m_4 : Css.Style
neg_m_4 =
    Css.property "margin" "-1rem"


{-| This class has the effect of following css declaration:

```css
.-m-40 {
  margin: -10rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_m_40 : Css.Style
neg_m_40 =
    Css.property "margin" "-10rem"


{-| This class has the effect of following css declaration:

```css
.-m-44 {
  margin: -11rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_m_44 : Css.Style
neg_m_44 =
    Css.property "margin" "-11rem"


{-| This class has the effect of following css declaration:

```css
.-m-48 {
  margin: -12rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_m_48 : Css.Style
neg_m_48 =
    Css.property "margin" "-12rem"


{-| This class has the effect of following css declaration:

```css
.-m-5 {
  margin: -1.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_m_5 : Css.Style
neg_m_5 =
    Css.property "margin" "-1.25rem"


{-| This class has the effect of following css declaration:

```css
.-m-52 {
  margin: -13rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_m_52 : Css.Style
neg_m_52 =
    Css.property "margin" "-13rem"


{-| This class has the effect of following css declaration:

```css
.-m-56 {
  margin: -14rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_m_56 : Css.Style
neg_m_56 =
    Css.property "margin" "-14rem"


{-| This class has the effect of following css declaration:

```css
.-m-6 {
  margin: -1.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_m_6 : Css.Style
neg_m_6 =
    Css.property "margin" "-1.5rem"


{-| This class has the effect of following css declaration:

```css
.-m-60 {
  margin: -15rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_m_60 : Css.Style
neg_m_60 =
    Css.property "margin" "-15rem"


{-| This class has the effect of following css declaration:

```css
.-m-64 {
  margin: -16rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_m_64 : Css.Style
neg_m_64 =
    Css.property "margin" "-16rem"


{-| This class has the effect of following css declaration:

```css
.-m-7 {
  margin: -1.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_m_7 : Css.Style
neg_m_7 =
    Css.property "margin" "-1.75rem"


{-| This class has the effect of following css declaration:

```css
.-m-72 {
  margin: -18rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_m_72 : Css.Style
neg_m_72 =
    Css.property "margin" "-18rem"


{-| This class has the effect of following css declaration:

```css
.-m-8 {
  margin: -2rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_m_8 : Css.Style
neg_m_8 =
    Css.property "margin" "-2rem"


{-| This class has the effect of following css declaration:

```css
.-m-80 {
  margin: -20rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_m_80 : Css.Style
neg_m_80 =
    Css.property "margin" "-20rem"


{-| This class has the effect of following css declaration:

```css
.-m-9 {
  margin: -2.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_m_9 : Css.Style
neg_m_9 =
    Css.property "margin" "-2.25rem"


{-| This class has the effect of following css declaration:

```css
.-m-96 {
  margin: -24rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_m_96 : Css.Style
neg_m_96 =
    Css.property "margin" "-24rem"


{-| This class has the effect of following css declaration:

```css
.-m-px {
  margin: -1px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_m_px : Css.Style
neg_m_px =
    Css.property "margin" "-1px"


{-| This class has the effect of following css declaration:

```css
.-mb-0 {
  margin-bottom: 0px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mb_0 : Css.Style
neg_mb_0 =
    Css.property "margin-bottom" "0px"


{-| This class has the effect of following css declaration:

```css
.-mb-0\.5 {
  margin-bottom: -0.125rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mb_0_dot_5 : Css.Style
neg_mb_0_dot_5 =
    Css.property "margin-bottom" "-0.125rem"


{-| This class has the effect of following css declaration:

```css
.-mb-1 {
  margin-bottom: -0.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mb_1 : Css.Style
neg_mb_1 =
    Css.property "margin-bottom" "-0.25rem"


{-| This class has the effect of following css declaration:

```css
.-mb-10 {
  margin-bottom: -2.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mb_10 : Css.Style
neg_mb_10 =
    Css.property "margin-bottom" "-2.5rem"


{-| This class has the effect of following css declaration:

```css
.-mb-11 {
  margin-bottom: -2.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mb_11 : Css.Style
neg_mb_11 =
    Css.property "margin-bottom" "-2.75rem"


{-| This class has the effect of following css declaration:

```css
.-mb-12 {
  margin-bottom: -3rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mb_12 : Css.Style
neg_mb_12 =
    Css.property "margin-bottom" "-3rem"


{-| This class has the effect of following css declaration:

```css
.-mb-14 {
  margin-bottom: -3.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mb_14 : Css.Style
neg_mb_14 =
    Css.property "margin-bottom" "-3.5rem"


{-| This class has the effect of following css declaration:

```css
.-mb-16 {
  margin-bottom: -4rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mb_16 : Css.Style
neg_mb_16 =
    Css.property "margin-bottom" "-4rem"


{-| This class has the effect of following css declaration:

```css
.-mb-1\.5 {
  margin-bottom: -0.375rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mb_1_dot_5 : Css.Style
neg_mb_1_dot_5 =
    Css.property "margin-bottom" "-0.375rem"


{-| This class has the effect of following css declaration:

```css
.-mb-2 {
  margin-bottom: -0.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mb_2 : Css.Style
neg_mb_2 =
    Css.property "margin-bottom" "-0.5rem"


{-| This class has the effect of following css declaration:

```css
.-mb-20 {
  margin-bottom: -5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mb_20 : Css.Style
neg_mb_20 =
    Css.property "margin-bottom" "-5rem"


{-| This class has the effect of following css declaration:

```css
.-mb-24 {
  margin-bottom: -6rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mb_24 : Css.Style
neg_mb_24 =
    Css.property "margin-bottom" "-6rem"


{-| This class has the effect of following css declaration:

```css
.-mb-28 {
  margin-bottom: -7rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mb_28 : Css.Style
neg_mb_28 =
    Css.property "margin-bottom" "-7rem"


{-| This class has the effect of following css declaration:

```css
.-mb-2\.5 {
  margin-bottom: -0.625rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mb_2_dot_5 : Css.Style
neg_mb_2_dot_5 =
    Css.property "margin-bottom" "-0.625rem"


{-| This class has the effect of following css declaration:

```css
.-mb-3 {
  margin-bottom: -0.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mb_3 : Css.Style
neg_mb_3 =
    Css.property "margin-bottom" "-0.75rem"


{-| This class has the effect of following css declaration:

```css
.-mb-32 {
  margin-bottom: -8rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mb_32 : Css.Style
neg_mb_32 =
    Css.property "margin-bottom" "-8rem"


{-| This class has the effect of following css declaration:

```css
.-mb-36 {
  margin-bottom: -9rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mb_36 : Css.Style
neg_mb_36 =
    Css.property "margin-bottom" "-9rem"


{-| This class has the effect of following css declaration:

```css
.-mb-3\.5 {
  margin-bottom: -0.875rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mb_3_dot_5 : Css.Style
neg_mb_3_dot_5 =
    Css.property "margin-bottom" "-0.875rem"


{-| This class has the effect of following css declaration:

```css
.-mb-4 {
  margin-bottom: -1rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mb_4 : Css.Style
neg_mb_4 =
    Css.property "margin-bottom" "-1rem"


{-| This class has the effect of following css declaration:

```css
.-mb-40 {
  margin-bottom: -10rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mb_40 : Css.Style
neg_mb_40 =
    Css.property "margin-bottom" "-10rem"


{-| This class has the effect of following css declaration:

```css
.-mb-44 {
  margin-bottom: -11rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mb_44 : Css.Style
neg_mb_44 =
    Css.property "margin-bottom" "-11rem"


{-| This class has the effect of following css declaration:

```css
.-mb-48 {
  margin-bottom: -12rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mb_48 : Css.Style
neg_mb_48 =
    Css.property "margin-bottom" "-12rem"


{-| This class has the effect of following css declaration:

```css
.-mb-5 {
  margin-bottom: -1.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mb_5 : Css.Style
neg_mb_5 =
    Css.property "margin-bottom" "-1.25rem"


{-| This class has the effect of following css declaration:

```css
.-mb-52 {
  margin-bottom: -13rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mb_52 : Css.Style
neg_mb_52 =
    Css.property "margin-bottom" "-13rem"


{-| This class has the effect of following css declaration:

```css
.-mb-56 {
  margin-bottom: -14rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mb_56 : Css.Style
neg_mb_56 =
    Css.property "margin-bottom" "-14rem"


{-| This class has the effect of following css declaration:

```css
.-mb-6 {
  margin-bottom: -1.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mb_6 : Css.Style
neg_mb_6 =
    Css.property "margin-bottom" "-1.5rem"


{-| This class has the effect of following css declaration:

```css
.-mb-60 {
  margin-bottom: -15rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mb_60 : Css.Style
neg_mb_60 =
    Css.property "margin-bottom" "-15rem"


{-| This class has the effect of following css declaration:

```css
.-mb-64 {
  margin-bottom: -16rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mb_64 : Css.Style
neg_mb_64 =
    Css.property "margin-bottom" "-16rem"


{-| This class has the effect of following css declaration:

```css
.-mb-7 {
  margin-bottom: -1.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mb_7 : Css.Style
neg_mb_7 =
    Css.property "margin-bottom" "-1.75rem"


{-| This class has the effect of following css declaration:

```css
.-mb-72 {
  margin-bottom: -18rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mb_72 : Css.Style
neg_mb_72 =
    Css.property "margin-bottom" "-18rem"


{-| This class has the effect of following css declaration:

```css
.-mb-8 {
  margin-bottom: -2rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mb_8 : Css.Style
neg_mb_8 =
    Css.property "margin-bottom" "-2rem"


{-| This class has the effect of following css declaration:

```css
.-mb-80 {
  margin-bottom: -20rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mb_80 : Css.Style
neg_mb_80 =
    Css.property "margin-bottom" "-20rem"


{-| This class has the effect of following css declaration:

```css
.-mb-9 {
  margin-bottom: -2.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mb_9 : Css.Style
neg_mb_9 =
    Css.property "margin-bottom" "-2.25rem"


{-| This class has the effect of following css declaration:

```css
.-mb-96 {
  margin-bottom: -24rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mb_96 : Css.Style
neg_mb_96 =
    Css.property "margin-bottom" "-24rem"


{-| This class has the effect of following css declaration:

```css
.-mb-px {
  margin-bottom: -1px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mb_px : Css.Style
neg_mb_px =
    Css.property "margin-bottom" "-1px"


{-| This class has the effect of following css declaration:

```css
.-ml-0 {
  margin-left: 0px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_ml_0 : Css.Style
neg_ml_0 =
    Css.property "margin-left" "0px"


{-| This class has the effect of following css declaration:

```css
.-ml-0\.5 {
  margin-left: -0.125rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_ml_0_dot_5 : Css.Style
neg_ml_0_dot_5 =
    Css.property "margin-left" "-0.125rem"


{-| This class has the effect of following css declaration:

```css
.-ml-1 {
  margin-left: -0.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_ml_1 : Css.Style
neg_ml_1 =
    Css.property "margin-left" "-0.25rem"


{-| This class has the effect of following css declaration:

```css
.-ml-10 {
  margin-left: -2.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_ml_10 : Css.Style
neg_ml_10 =
    Css.property "margin-left" "-2.5rem"


{-| This class has the effect of following css declaration:

```css
.-ml-11 {
  margin-left: -2.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_ml_11 : Css.Style
neg_ml_11 =
    Css.property "margin-left" "-2.75rem"


{-| This class has the effect of following css declaration:

```css
.-ml-12 {
  margin-left: -3rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_ml_12 : Css.Style
neg_ml_12 =
    Css.property "margin-left" "-3rem"


{-| This class has the effect of following css declaration:

```css
.-ml-14 {
  margin-left: -3.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_ml_14 : Css.Style
neg_ml_14 =
    Css.property "margin-left" "-3.5rem"


{-| This class has the effect of following css declaration:

```css
.-ml-16 {
  margin-left: -4rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_ml_16 : Css.Style
neg_ml_16 =
    Css.property "margin-left" "-4rem"


{-| This class has the effect of following css declaration:

```css
.-ml-1\.5 {
  margin-left: -0.375rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_ml_1_dot_5 : Css.Style
neg_ml_1_dot_5 =
    Css.property "margin-left" "-0.375rem"


{-| This class has the effect of following css declaration:

```css
.-ml-2 {
  margin-left: -0.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_ml_2 : Css.Style
neg_ml_2 =
    Css.property "margin-left" "-0.5rem"


{-| This class has the effect of following css declaration:

```css
.-ml-20 {
  margin-left: -5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_ml_20 : Css.Style
neg_ml_20 =
    Css.property "margin-left" "-5rem"


{-| This class has the effect of following css declaration:

```css
.-ml-24 {
  margin-left: -6rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_ml_24 : Css.Style
neg_ml_24 =
    Css.property "margin-left" "-6rem"


{-| This class has the effect of following css declaration:

```css
.-ml-28 {
  margin-left: -7rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_ml_28 : Css.Style
neg_ml_28 =
    Css.property "margin-left" "-7rem"


{-| This class has the effect of following css declaration:

```css
.-ml-2\.5 {
  margin-left: -0.625rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_ml_2_dot_5 : Css.Style
neg_ml_2_dot_5 =
    Css.property "margin-left" "-0.625rem"


{-| This class has the effect of following css declaration:

```css
.-ml-3 {
  margin-left: -0.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_ml_3 : Css.Style
neg_ml_3 =
    Css.property "margin-left" "-0.75rem"


{-| This class has the effect of following css declaration:

```css
.-ml-32 {
  margin-left: -8rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_ml_32 : Css.Style
neg_ml_32 =
    Css.property "margin-left" "-8rem"


{-| This class has the effect of following css declaration:

```css
.-ml-36 {
  margin-left: -9rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_ml_36 : Css.Style
neg_ml_36 =
    Css.property "margin-left" "-9rem"


{-| This class has the effect of following css declaration:

```css
.-ml-3\.5 {
  margin-left: -0.875rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_ml_3_dot_5 : Css.Style
neg_ml_3_dot_5 =
    Css.property "margin-left" "-0.875rem"


{-| This class has the effect of following css declaration:

```css
.-ml-4 {
  margin-left: -1rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_ml_4 : Css.Style
neg_ml_4 =
    Css.property "margin-left" "-1rem"


{-| This class has the effect of following css declaration:

```css
.-ml-40 {
  margin-left: -10rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_ml_40 : Css.Style
neg_ml_40 =
    Css.property "margin-left" "-10rem"


{-| This class has the effect of following css declaration:

```css
.-ml-44 {
  margin-left: -11rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_ml_44 : Css.Style
neg_ml_44 =
    Css.property "margin-left" "-11rem"


{-| This class has the effect of following css declaration:

```css
.-ml-48 {
  margin-left: -12rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_ml_48 : Css.Style
neg_ml_48 =
    Css.property "margin-left" "-12rem"


{-| This class has the effect of following css declaration:

```css
.-ml-5 {
  margin-left: -1.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_ml_5 : Css.Style
neg_ml_5 =
    Css.property "margin-left" "-1.25rem"


{-| This class has the effect of following css declaration:

```css
.-ml-52 {
  margin-left: -13rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_ml_52 : Css.Style
neg_ml_52 =
    Css.property "margin-left" "-13rem"


{-| This class has the effect of following css declaration:

```css
.-ml-56 {
  margin-left: -14rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_ml_56 : Css.Style
neg_ml_56 =
    Css.property "margin-left" "-14rem"


{-| This class has the effect of following css declaration:

```css
.-ml-6 {
  margin-left: -1.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_ml_6 : Css.Style
neg_ml_6 =
    Css.property "margin-left" "-1.5rem"


{-| This class has the effect of following css declaration:

```css
.-ml-60 {
  margin-left: -15rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_ml_60 : Css.Style
neg_ml_60 =
    Css.property "margin-left" "-15rem"


{-| This class has the effect of following css declaration:

```css
.-ml-64 {
  margin-left: -16rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_ml_64 : Css.Style
neg_ml_64 =
    Css.property "margin-left" "-16rem"


{-| This class has the effect of following css declaration:

```css
.-ml-7 {
  margin-left: -1.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_ml_7 : Css.Style
neg_ml_7 =
    Css.property "margin-left" "-1.75rem"


{-| This class has the effect of following css declaration:

```css
.-ml-72 {
  margin-left: -18rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_ml_72 : Css.Style
neg_ml_72 =
    Css.property "margin-left" "-18rem"


{-| This class has the effect of following css declaration:

```css
.-ml-8 {
  margin-left: -2rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_ml_8 : Css.Style
neg_ml_8 =
    Css.property "margin-left" "-2rem"


{-| This class has the effect of following css declaration:

```css
.-ml-80 {
  margin-left: -20rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_ml_80 : Css.Style
neg_ml_80 =
    Css.property "margin-left" "-20rem"


{-| This class has the effect of following css declaration:

```css
.-ml-9 {
  margin-left: -2.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_ml_9 : Css.Style
neg_ml_9 =
    Css.property "margin-left" "-2.25rem"


{-| This class has the effect of following css declaration:

```css
.-ml-96 {
  margin-left: -24rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_ml_96 : Css.Style
neg_ml_96 =
    Css.property "margin-left" "-24rem"


{-| This class has the effect of following css declaration:

```css
.-ml-px {
  margin-left: -1px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_ml_px : Css.Style
neg_ml_px =
    Css.property "margin-left" "-1px"


{-| This class has the effect of following css declaration:

```css
.-mr-0 {
  margin-right: 0px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mr_0 : Css.Style
neg_mr_0 =
    Css.property "margin-right" "0px"


{-| This class has the effect of following css declaration:

```css
.-mr-0\.5 {
  margin-right: -0.125rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mr_0_dot_5 : Css.Style
neg_mr_0_dot_5 =
    Css.property "margin-right" "-0.125rem"


{-| This class has the effect of following css declaration:

```css
.-mr-1 {
  margin-right: -0.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mr_1 : Css.Style
neg_mr_1 =
    Css.property "margin-right" "-0.25rem"


{-| This class has the effect of following css declaration:

```css
.-mr-10 {
  margin-right: -2.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mr_10 : Css.Style
neg_mr_10 =
    Css.property "margin-right" "-2.5rem"


{-| This class has the effect of following css declaration:

```css
.-mr-11 {
  margin-right: -2.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mr_11 : Css.Style
neg_mr_11 =
    Css.property "margin-right" "-2.75rem"


{-| This class has the effect of following css declaration:

```css
.-mr-12 {
  margin-right: -3rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mr_12 : Css.Style
neg_mr_12 =
    Css.property "margin-right" "-3rem"


{-| This class has the effect of following css declaration:

```css
.-mr-14 {
  margin-right: -3.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mr_14 : Css.Style
neg_mr_14 =
    Css.property "margin-right" "-3.5rem"


{-| This class has the effect of following css declaration:

```css
.-mr-16 {
  margin-right: -4rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mr_16 : Css.Style
neg_mr_16 =
    Css.property "margin-right" "-4rem"


{-| This class has the effect of following css declaration:

```css
.-mr-1\.5 {
  margin-right: -0.375rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mr_1_dot_5 : Css.Style
neg_mr_1_dot_5 =
    Css.property "margin-right" "-0.375rem"


{-| This class has the effect of following css declaration:

```css
.-mr-2 {
  margin-right: -0.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mr_2 : Css.Style
neg_mr_2 =
    Css.property "margin-right" "-0.5rem"


{-| This class has the effect of following css declaration:

```css
.-mr-20 {
  margin-right: -5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mr_20 : Css.Style
neg_mr_20 =
    Css.property "margin-right" "-5rem"


{-| This class has the effect of following css declaration:

```css
.-mr-24 {
  margin-right: -6rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mr_24 : Css.Style
neg_mr_24 =
    Css.property "margin-right" "-6rem"


{-| This class has the effect of following css declaration:

```css
.-mr-28 {
  margin-right: -7rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mr_28 : Css.Style
neg_mr_28 =
    Css.property "margin-right" "-7rem"


{-| This class has the effect of following css declaration:

```css
.-mr-2\.5 {
  margin-right: -0.625rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mr_2_dot_5 : Css.Style
neg_mr_2_dot_5 =
    Css.property "margin-right" "-0.625rem"


{-| This class has the effect of following css declaration:

```css
.-mr-3 {
  margin-right: -0.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mr_3 : Css.Style
neg_mr_3 =
    Css.property "margin-right" "-0.75rem"


{-| This class has the effect of following css declaration:

```css
.-mr-32 {
  margin-right: -8rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mr_32 : Css.Style
neg_mr_32 =
    Css.property "margin-right" "-8rem"


{-| This class has the effect of following css declaration:

```css
.-mr-36 {
  margin-right: -9rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mr_36 : Css.Style
neg_mr_36 =
    Css.property "margin-right" "-9rem"


{-| This class has the effect of following css declaration:

```css
.-mr-3\.5 {
  margin-right: -0.875rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mr_3_dot_5 : Css.Style
neg_mr_3_dot_5 =
    Css.property "margin-right" "-0.875rem"


{-| This class has the effect of following css declaration:

```css
.-mr-4 {
  margin-right: -1rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mr_4 : Css.Style
neg_mr_4 =
    Css.property "margin-right" "-1rem"


{-| This class has the effect of following css declaration:

```css
.-mr-40 {
  margin-right: -10rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mr_40 : Css.Style
neg_mr_40 =
    Css.property "margin-right" "-10rem"


{-| This class has the effect of following css declaration:

```css
.-mr-44 {
  margin-right: -11rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mr_44 : Css.Style
neg_mr_44 =
    Css.property "margin-right" "-11rem"


{-| This class has the effect of following css declaration:

```css
.-mr-48 {
  margin-right: -12rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mr_48 : Css.Style
neg_mr_48 =
    Css.property "margin-right" "-12rem"


{-| This class has the effect of following css declaration:

```css
.-mr-5 {
  margin-right: -1.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mr_5 : Css.Style
neg_mr_5 =
    Css.property "margin-right" "-1.25rem"


{-| This class has the effect of following css declaration:

```css
.-mr-52 {
  margin-right: -13rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mr_52 : Css.Style
neg_mr_52 =
    Css.property "margin-right" "-13rem"


{-| This class has the effect of following css declaration:

```css
.-mr-56 {
  margin-right: -14rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mr_56 : Css.Style
neg_mr_56 =
    Css.property "margin-right" "-14rem"


{-| This class has the effect of following css declaration:

```css
.-mr-6 {
  margin-right: -1.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mr_6 : Css.Style
neg_mr_6 =
    Css.property "margin-right" "-1.5rem"


{-| This class has the effect of following css declaration:

```css
.-mr-60 {
  margin-right: -15rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mr_60 : Css.Style
neg_mr_60 =
    Css.property "margin-right" "-15rem"


{-| This class has the effect of following css declaration:

```css
.-mr-64 {
  margin-right: -16rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mr_64 : Css.Style
neg_mr_64 =
    Css.property "margin-right" "-16rem"


{-| This class has the effect of following css declaration:

```css
.-mr-7 {
  margin-right: -1.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mr_7 : Css.Style
neg_mr_7 =
    Css.property "margin-right" "-1.75rem"


{-| This class has the effect of following css declaration:

```css
.-mr-72 {
  margin-right: -18rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mr_72 : Css.Style
neg_mr_72 =
    Css.property "margin-right" "-18rem"


{-| This class has the effect of following css declaration:

```css
.-mr-8 {
  margin-right: -2rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mr_8 : Css.Style
neg_mr_8 =
    Css.property "margin-right" "-2rem"


{-| This class has the effect of following css declaration:

```css
.-mr-80 {
  margin-right: -20rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mr_80 : Css.Style
neg_mr_80 =
    Css.property "margin-right" "-20rem"


{-| This class has the effect of following css declaration:

```css
.-mr-9 {
  margin-right: -2.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mr_9 : Css.Style
neg_mr_9 =
    Css.property "margin-right" "-2.25rem"


{-| This class has the effect of following css declaration:

```css
.-mr-96 {
  margin-right: -24rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mr_96 : Css.Style
neg_mr_96 =
    Css.property "margin-right" "-24rem"


{-| This class has the effect of following css declaration:

```css
.-mr-px {
  margin-right: -1px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mr_px : Css.Style
neg_mr_px =
    Css.property "margin-right" "-1px"


{-| This class has the effect of following css declaration:

```css
.-mt-0 {
  margin-top: 0px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mt_0 : Css.Style
neg_mt_0 =
    Css.property "margin-top" "0px"


{-| This class has the effect of following css declaration:

```css
.-mt-0\.5 {
  margin-top: -0.125rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mt_0_dot_5 : Css.Style
neg_mt_0_dot_5 =
    Css.property "margin-top" "-0.125rem"


{-| This class has the effect of following css declaration:

```css
.-mt-1 {
  margin-top: -0.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mt_1 : Css.Style
neg_mt_1 =
    Css.property "margin-top" "-0.25rem"


{-| This class has the effect of following css declaration:

```css
.-mt-10 {
  margin-top: -2.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mt_10 : Css.Style
neg_mt_10 =
    Css.property "margin-top" "-2.5rem"


{-| This class has the effect of following css declaration:

```css
.-mt-11 {
  margin-top: -2.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mt_11 : Css.Style
neg_mt_11 =
    Css.property "margin-top" "-2.75rem"


{-| This class has the effect of following css declaration:

```css
.-mt-12 {
  margin-top: -3rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mt_12 : Css.Style
neg_mt_12 =
    Css.property "margin-top" "-3rem"


{-| This class has the effect of following css declaration:

```css
.-mt-14 {
  margin-top: -3.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mt_14 : Css.Style
neg_mt_14 =
    Css.property "margin-top" "-3.5rem"


{-| This class has the effect of following css declaration:

```css
.-mt-16 {
  margin-top: -4rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mt_16 : Css.Style
neg_mt_16 =
    Css.property "margin-top" "-4rem"


{-| This class has the effect of following css declaration:

```css
.-mt-1\.5 {
  margin-top: -0.375rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mt_1_dot_5 : Css.Style
neg_mt_1_dot_5 =
    Css.property "margin-top" "-0.375rem"


{-| This class has the effect of following css declaration:

```css
.-mt-2 {
  margin-top: -0.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mt_2 : Css.Style
neg_mt_2 =
    Css.property "margin-top" "-0.5rem"


{-| This class has the effect of following css declaration:

```css
.-mt-20 {
  margin-top: -5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mt_20 : Css.Style
neg_mt_20 =
    Css.property "margin-top" "-5rem"


{-| This class has the effect of following css declaration:

```css
.-mt-24 {
  margin-top: -6rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mt_24 : Css.Style
neg_mt_24 =
    Css.property "margin-top" "-6rem"


{-| This class has the effect of following css declaration:

```css
.-mt-28 {
  margin-top: -7rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mt_28 : Css.Style
neg_mt_28 =
    Css.property "margin-top" "-7rem"


{-| This class has the effect of following css declaration:

```css
.-mt-2\.5 {
  margin-top: -0.625rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mt_2_dot_5 : Css.Style
neg_mt_2_dot_5 =
    Css.property "margin-top" "-0.625rem"


{-| This class has the effect of following css declaration:

```css
.-mt-3 {
  margin-top: -0.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mt_3 : Css.Style
neg_mt_3 =
    Css.property "margin-top" "-0.75rem"


{-| This class has the effect of following css declaration:

```css
.-mt-32 {
  margin-top: -8rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mt_32 : Css.Style
neg_mt_32 =
    Css.property "margin-top" "-8rem"


{-| This class has the effect of following css declaration:

```css
.-mt-36 {
  margin-top: -9rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mt_36 : Css.Style
neg_mt_36 =
    Css.property "margin-top" "-9rem"


{-| This class has the effect of following css declaration:

```css
.-mt-3\.5 {
  margin-top: -0.875rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mt_3_dot_5 : Css.Style
neg_mt_3_dot_5 =
    Css.property "margin-top" "-0.875rem"


{-| This class has the effect of following css declaration:

```css
.-mt-4 {
  margin-top: -1rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mt_4 : Css.Style
neg_mt_4 =
    Css.property "margin-top" "-1rem"


{-| This class has the effect of following css declaration:

```css
.-mt-40 {
  margin-top: -10rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mt_40 : Css.Style
neg_mt_40 =
    Css.property "margin-top" "-10rem"


{-| This class has the effect of following css declaration:

```css
.-mt-44 {
  margin-top: -11rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mt_44 : Css.Style
neg_mt_44 =
    Css.property "margin-top" "-11rem"


{-| This class has the effect of following css declaration:

```css
.-mt-48 {
  margin-top: -12rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mt_48 : Css.Style
neg_mt_48 =
    Css.property "margin-top" "-12rem"


{-| This class has the effect of following css declaration:

```css
.-mt-5 {
  margin-top: -1.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mt_5 : Css.Style
neg_mt_5 =
    Css.property "margin-top" "-1.25rem"


{-| This class has the effect of following css declaration:

```css
.-mt-52 {
  margin-top: -13rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mt_52 : Css.Style
neg_mt_52 =
    Css.property "margin-top" "-13rem"


{-| This class has the effect of following css declaration:

```css
.-mt-56 {
  margin-top: -14rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mt_56 : Css.Style
neg_mt_56 =
    Css.property "margin-top" "-14rem"


{-| This class has the effect of following css declaration:

```css
.-mt-6 {
  margin-top: -1.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mt_6 : Css.Style
neg_mt_6 =
    Css.property "margin-top" "-1.5rem"


{-| This class has the effect of following css declaration:

```css
.-mt-60 {
  margin-top: -15rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mt_60 : Css.Style
neg_mt_60 =
    Css.property "margin-top" "-15rem"


{-| This class has the effect of following css declaration:

```css
.-mt-64 {
  margin-top: -16rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mt_64 : Css.Style
neg_mt_64 =
    Css.property "margin-top" "-16rem"


{-| This class has the effect of following css declaration:

```css
.-mt-7 {
  margin-top: -1.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mt_7 : Css.Style
neg_mt_7 =
    Css.property "margin-top" "-1.75rem"


{-| This class has the effect of following css declaration:

```css
.-mt-72 {
  margin-top: -18rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mt_72 : Css.Style
neg_mt_72 =
    Css.property "margin-top" "-18rem"


{-| This class has the effect of following css declaration:

```css
.-mt-8 {
  margin-top: -2rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mt_8 : Css.Style
neg_mt_8 =
    Css.property "margin-top" "-2rem"


{-| This class has the effect of following css declaration:

```css
.-mt-80 {
  margin-top: -20rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mt_80 : Css.Style
neg_mt_80 =
    Css.property "margin-top" "-20rem"


{-| This class has the effect of following css declaration:

```css
.-mt-9 {
  margin-top: -2.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mt_9 : Css.Style
neg_mt_9 =
    Css.property "margin-top" "-2.25rem"


{-| This class has the effect of following css declaration:

```css
.-mt-96 {
  margin-top: -24rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mt_96 : Css.Style
neg_mt_96 =
    Css.property "margin-top" "-24rem"


{-| This class has the effect of following css declaration:

```css
.-mt-px {
  margin-top: -1px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mt_px : Css.Style
neg_mt_px =
    Css.property "margin-top" "-1px"


{-| This class has the effect of following css declaration:

```css
.-mx-0 {
  margin-left: 0px;
  margin-right: 0px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mx_0 : Css.Style
neg_mx_0 =
    Css.batch
        [ Css.property "margin-left" "0px"
        , Css.property "margin-right" "0px"
        ]


{-| This class has the effect of following css declaration:

```css
.-mx-0\.5 {
  margin-left: -0.125rem;
  margin-right: -0.125rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mx_0_dot_5 : Css.Style
neg_mx_0_dot_5 =
    Css.batch
        [ Css.property "margin-left" "-0.125rem"
        , Css.property "margin-right" "-0.125rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-mx-1 {
  margin-left: -0.25rem;
  margin-right: -0.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mx_1 : Css.Style
neg_mx_1 =
    Css.batch
        [ Css.property "margin-left" "-0.25rem"
        , Css.property "margin-right" "-0.25rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-mx-10 {
  margin-left: -2.5rem;
  margin-right: -2.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mx_10 : Css.Style
neg_mx_10 =
    Css.batch
        [ Css.property "margin-left" "-2.5rem"
        , Css.property "margin-right" "-2.5rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-mx-11 {
  margin-left: -2.75rem;
  margin-right: -2.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mx_11 : Css.Style
neg_mx_11 =
    Css.batch
        [ Css.property "margin-left" "-2.75rem"
        , Css.property "margin-right" "-2.75rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-mx-12 {
  margin-left: -3rem;
  margin-right: -3rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mx_12 : Css.Style
neg_mx_12 =
    Css.batch
        [ Css.property "margin-left" "-3rem"
        , Css.property "margin-right" "-3rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-mx-14 {
  margin-left: -3.5rem;
  margin-right: -3.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mx_14 : Css.Style
neg_mx_14 =
    Css.batch
        [ Css.property "margin-left" "-3.5rem"
        , Css.property "margin-right" "-3.5rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-mx-16 {
  margin-left: -4rem;
  margin-right: -4rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mx_16 : Css.Style
neg_mx_16 =
    Css.batch
        [ Css.property "margin-left" "-4rem"
        , Css.property "margin-right" "-4rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-mx-1\.5 {
  margin-left: -0.375rem;
  margin-right: -0.375rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mx_1_dot_5 : Css.Style
neg_mx_1_dot_5 =
    Css.batch
        [ Css.property "margin-left" "-0.375rem"
        , Css.property "margin-right" "-0.375rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-mx-2 {
  margin-left: -0.5rem;
  margin-right: -0.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mx_2 : Css.Style
neg_mx_2 =
    Css.batch
        [ Css.property "margin-left" "-0.5rem"
        , Css.property "margin-right" "-0.5rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-mx-20 {
  margin-left: -5rem;
  margin-right: -5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mx_20 : Css.Style
neg_mx_20 =
    Css.batch
        [ Css.property "margin-left" "-5rem"
        , Css.property "margin-right" "-5rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-mx-24 {
  margin-left: -6rem;
  margin-right: -6rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mx_24 : Css.Style
neg_mx_24 =
    Css.batch
        [ Css.property "margin-left" "-6rem"
        , Css.property "margin-right" "-6rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-mx-28 {
  margin-left: -7rem;
  margin-right: -7rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mx_28 : Css.Style
neg_mx_28 =
    Css.batch
        [ Css.property "margin-left" "-7rem"
        , Css.property "margin-right" "-7rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-mx-2\.5 {
  margin-left: -0.625rem;
  margin-right: -0.625rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mx_2_dot_5 : Css.Style
neg_mx_2_dot_5 =
    Css.batch
        [ Css.property "margin-left" "-0.625rem"
        , Css.property "margin-right" "-0.625rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-mx-3 {
  margin-left: -0.75rem;
  margin-right: -0.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mx_3 : Css.Style
neg_mx_3 =
    Css.batch
        [ Css.property "margin-left" "-0.75rem"
        , Css.property "margin-right" "-0.75rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-mx-32 {
  margin-left: -8rem;
  margin-right: -8rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mx_32 : Css.Style
neg_mx_32 =
    Css.batch
        [ Css.property "margin-left" "-8rem"
        , Css.property "margin-right" "-8rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-mx-36 {
  margin-left: -9rem;
  margin-right: -9rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mx_36 : Css.Style
neg_mx_36 =
    Css.batch
        [ Css.property "margin-left" "-9rem"
        , Css.property "margin-right" "-9rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-mx-3\.5 {
  margin-left: -0.875rem;
  margin-right: -0.875rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mx_3_dot_5 : Css.Style
neg_mx_3_dot_5 =
    Css.batch
        [ Css.property "margin-left" "-0.875rem"
        , Css.property "margin-right" "-0.875rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-mx-4 {
  margin-left: -1rem;
  margin-right: -1rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mx_4 : Css.Style
neg_mx_4 =
    Css.batch
        [ Css.property "margin-left" "-1rem"
        , Css.property "margin-right" "-1rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-mx-40 {
  margin-left: -10rem;
  margin-right: -10rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mx_40 : Css.Style
neg_mx_40 =
    Css.batch
        [ Css.property "margin-left" "-10rem"
        , Css.property "margin-right" "-10rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-mx-44 {
  margin-left: -11rem;
  margin-right: -11rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mx_44 : Css.Style
neg_mx_44 =
    Css.batch
        [ Css.property "margin-left" "-11rem"
        , Css.property "margin-right" "-11rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-mx-48 {
  margin-left: -12rem;
  margin-right: -12rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mx_48 : Css.Style
neg_mx_48 =
    Css.batch
        [ Css.property "margin-left" "-12rem"
        , Css.property "margin-right" "-12rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-mx-5 {
  margin-left: -1.25rem;
  margin-right: -1.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mx_5 : Css.Style
neg_mx_5 =
    Css.batch
        [ Css.property "margin-left" "-1.25rem"
        , Css.property "margin-right" "-1.25rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-mx-52 {
  margin-left: -13rem;
  margin-right: -13rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mx_52 : Css.Style
neg_mx_52 =
    Css.batch
        [ Css.property "margin-left" "-13rem"
        , Css.property "margin-right" "-13rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-mx-56 {
  margin-left: -14rem;
  margin-right: -14rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mx_56 : Css.Style
neg_mx_56 =
    Css.batch
        [ Css.property "margin-left" "-14rem"
        , Css.property "margin-right" "-14rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-mx-6 {
  margin-left: -1.5rem;
  margin-right: -1.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mx_6 : Css.Style
neg_mx_6 =
    Css.batch
        [ Css.property "margin-left" "-1.5rem"
        , Css.property "margin-right" "-1.5rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-mx-60 {
  margin-left: -15rem;
  margin-right: -15rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mx_60 : Css.Style
neg_mx_60 =
    Css.batch
        [ Css.property "margin-left" "-15rem"
        , Css.property "margin-right" "-15rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-mx-64 {
  margin-left: -16rem;
  margin-right: -16rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mx_64 : Css.Style
neg_mx_64 =
    Css.batch
        [ Css.property "margin-left" "-16rem"
        , Css.property "margin-right" "-16rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-mx-7 {
  margin-left: -1.75rem;
  margin-right: -1.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mx_7 : Css.Style
neg_mx_7 =
    Css.batch
        [ Css.property "margin-left" "-1.75rem"
        , Css.property "margin-right" "-1.75rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-mx-72 {
  margin-left: -18rem;
  margin-right: -18rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mx_72 : Css.Style
neg_mx_72 =
    Css.batch
        [ Css.property "margin-left" "-18rem"
        , Css.property "margin-right" "-18rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-mx-8 {
  margin-left: -2rem;
  margin-right: -2rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mx_8 : Css.Style
neg_mx_8 =
    Css.batch
        [ Css.property "margin-left" "-2rem"
        , Css.property "margin-right" "-2rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-mx-80 {
  margin-left: -20rem;
  margin-right: -20rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mx_80 : Css.Style
neg_mx_80 =
    Css.batch
        [ Css.property "margin-left" "-20rem"
        , Css.property "margin-right" "-20rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-mx-9 {
  margin-left: -2.25rem;
  margin-right: -2.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mx_9 : Css.Style
neg_mx_9 =
    Css.batch
        [ Css.property "margin-left" "-2.25rem"
        , Css.property "margin-right" "-2.25rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-mx-96 {
  margin-left: -24rem;
  margin-right: -24rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mx_96 : Css.Style
neg_mx_96 =
    Css.batch
        [ Css.property "margin-left" "-24rem"
        , Css.property "margin-right" "-24rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-mx-px {
  margin-left: -1px;
  margin-right: -1px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mx_px : Css.Style
neg_mx_px =
    Css.batch
        [ Css.property "margin-left" "-1px"
        , Css.property "margin-right" "-1px"
        ]


{-| This class has the effect of following css declaration:

```css
.-my-0 {
  margin-top: 0px;
  margin-bottom: 0px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_my_0 : Css.Style
neg_my_0 =
    Css.batch
        [ Css.property "margin-top" "0px"
        , Css.property "margin-bottom" "0px"
        ]


{-| This class has the effect of following css declaration:

```css
.-my-0\.5 {
  margin-top: -0.125rem;
  margin-bottom: -0.125rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_my_0_dot_5 : Css.Style
neg_my_0_dot_5 =
    Css.batch
        [ Css.property "margin-top" "-0.125rem"
        , Css.property "margin-bottom" "-0.125rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-my-1 {
  margin-top: -0.25rem;
  margin-bottom: -0.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_my_1 : Css.Style
neg_my_1 =
    Css.batch
        [ Css.property "margin-top" "-0.25rem"
        , Css.property "margin-bottom" "-0.25rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-my-10 {
  margin-top: -2.5rem;
  margin-bottom: -2.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_my_10 : Css.Style
neg_my_10 =
    Css.batch
        [ Css.property "margin-top" "-2.5rem"
        , Css.property "margin-bottom" "-2.5rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-my-11 {
  margin-top: -2.75rem;
  margin-bottom: -2.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_my_11 : Css.Style
neg_my_11 =
    Css.batch
        [ Css.property "margin-top" "-2.75rem"
        , Css.property "margin-bottom" "-2.75rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-my-12 {
  margin-top: -3rem;
  margin-bottom: -3rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_my_12 : Css.Style
neg_my_12 =
    Css.batch
        [ Css.property "margin-top" "-3rem"
        , Css.property "margin-bottom" "-3rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-my-14 {
  margin-top: -3.5rem;
  margin-bottom: -3.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_my_14 : Css.Style
neg_my_14 =
    Css.batch
        [ Css.property "margin-top" "-3.5rem"
        , Css.property "margin-bottom" "-3.5rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-my-16 {
  margin-top: -4rem;
  margin-bottom: -4rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_my_16 : Css.Style
neg_my_16 =
    Css.batch
        [ Css.property "margin-top" "-4rem"
        , Css.property "margin-bottom" "-4rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-my-1\.5 {
  margin-top: -0.375rem;
  margin-bottom: -0.375rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_my_1_dot_5 : Css.Style
neg_my_1_dot_5 =
    Css.batch
        [ Css.property "margin-top" "-0.375rem"
        , Css.property "margin-bottom" "-0.375rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-my-2 {
  margin-top: -0.5rem;
  margin-bottom: -0.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_my_2 : Css.Style
neg_my_2 =
    Css.batch
        [ Css.property "margin-top" "-0.5rem"
        , Css.property "margin-bottom" "-0.5rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-my-20 {
  margin-top: -5rem;
  margin-bottom: -5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_my_20 : Css.Style
neg_my_20 =
    Css.batch
        [ Css.property "margin-top" "-5rem"
        , Css.property "margin-bottom" "-5rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-my-24 {
  margin-top: -6rem;
  margin-bottom: -6rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_my_24 : Css.Style
neg_my_24 =
    Css.batch
        [ Css.property "margin-top" "-6rem"
        , Css.property "margin-bottom" "-6rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-my-28 {
  margin-top: -7rem;
  margin-bottom: -7rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_my_28 : Css.Style
neg_my_28 =
    Css.batch
        [ Css.property "margin-top" "-7rem"
        , Css.property "margin-bottom" "-7rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-my-2\.5 {
  margin-top: -0.625rem;
  margin-bottom: -0.625rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_my_2_dot_5 : Css.Style
neg_my_2_dot_5 =
    Css.batch
        [ Css.property "margin-top" "-0.625rem"
        , Css.property "margin-bottom" "-0.625rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-my-3 {
  margin-top: -0.75rem;
  margin-bottom: -0.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_my_3 : Css.Style
neg_my_3 =
    Css.batch
        [ Css.property "margin-top" "-0.75rem"
        , Css.property "margin-bottom" "-0.75rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-my-32 {
  margin-top: -8rem;
  margin-bottom: -8rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_my_32 : Css.Style
neg_my_32 =
    Css.batch
        [ Css.property "margin-top" "-8rem"
        , Css.property "margin-bottom" "-8rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-my-36 {
  margin-top: -9rem;
  margin-bottom: -9rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_my_36 : Css.Style
neg_my_36 =
    Css.batch
        [ Css.property "margin-top" "-9rem"
        , Css.property "margin-bottom" "-9rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-my-3\.5 {
  margin-top: -0.875rem;
  margin-bottom: -0.875rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_my_3_dot_5 : Css.Style
neg_my_3_dot_5 =
    Css.batch
        [ Css.property "margin-top" "-0.875rem"
        , Css.property "margin-bottom" "-0.875rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-my-4 {
  margin-top: -1rem;
  margin-bottom: -1rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_my_4 : Css.Style
neg_my_4 =
    Css.batch
        [ Css.property "margin-top" "-1rem"
        , Css.property "margin-bottom" "-1rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-my-40 {
  margin-top: -10rem;
  margin-bottom: -10rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_my_40 : Css.Style
neg_my_40 =
    Css.batch
        [ Css.property "margin-top" "-10rem"
        , Css.property "margin-bottom" "-10rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-my-44 {
  margin-top: -11rem;
  margin-bottom: -11rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_my_44 : Css.Style
neg_my_44 =
    Css.batch
        [ Css.property "margin-top" "-11rem"
        , Css.property "margin-bottom" "-11rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-my-48 {
  margin-top: -12rem;
  margin-bottom: -12rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_my_48 : Css.Style
neg_my_48 =
    Css.batch
        [ Css.property "margin-top" "-12rem"
        , Css.property "margin-bottom" "-12rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-my-5 {
  margin-top: -1.25rem;
  margin-bottom: -1.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_my_5 : Css.Style
neg_my_5 =
    Css.batch
        [ Css.property "margin-top" "-1.25rem"
        , Css.property "margin-bottom" "-1.25rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-my-52 {
  margin-top: -13rem;
  margin-bottom: -13rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_my_52 : Css.Style
neg_my_52 =
    Css.batch
        [ Css.property "margin-top" "-13rem"
        , Css.property "margin-bottom" "-13rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-my-56 {
  margin-top: -14rem;
  margin-bottom: -14rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_my_56 : Css.Style
neg_my_56 =
    Css.batch
        [ Css.property "margin-top" "-14rem"
        , Css.property "margin-bottom" "-14rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-my-6 {
  margin-top: -1.5rem;
  margin-bottom: -1.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_my_6 : Css.Style
neg_my_6 =
    Css.batch
        [ Css.property "margin-top" "-1.5rem"
        , Css.property "margin-bottom" "-1.5rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-my-60 {
  margin-top: -15rem;
  margin-bottom: -15rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_my_60 : Css.Style
neg_my_60 =
    Css.batch
        [ Css.property "margin-top" "-15rem"
        , Css.property "margin-bottom" "-15rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-my-64 {
  margin-top: -16rem;
  margin-bottom: -16rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_my_64 : Css.Style
neg_my_64 =
    Css.batch
        [ Css.property "margin-top" "-16rem"
        , Css.property "margin-bottom" "-16rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-my-7 {
  margin-top: -1.75rem;
  margin-bottom: -1.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_my_7 : Css.Style
neg_my_7 =
    Css.batch
        [ Css.property "margin-top" "-1.75rem"
        , Css.property "margin-bottom" "-1.75rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-my-72 {
  margin-top: -18rem;
  margin-bottom: -18rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_my_72 : Css.Style
neg_my_72 =
    Css.batch
        [ Css.property "margin-top" "-18rem"
        , Css.property "margin-bottom" "-18rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-my-8 {
  margin-top: -2rem;
  margin-bottom: -2rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_my_8 : Css.Style
neg_my_8 =
    Css.batch
        [ Css.property "margin-top" "-2rem"
        , Css.property "margin-bottom" "-2rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-my-80 {
  margin-top: -20rem;
  margin-bottom: -20rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_my_80 : Css.Style
neg_my_80 =
    Css.batch
        [ Css.property "margin-top" "-20rem"
        , Css.property "margin-bottom" "-20rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-my-9 {
  margin-top: -2.25rem;
  margin-bottom: -2.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_my_9 : Css.Style
neg_my_9 =
    Css.batch
        [ Css.property "margin-top" "-2.25rem"
        , Css.property "margin-bottom" "-2.25rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-my-96 {
  margin-top: -24rem;
  margin-bottom: -24rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_my_96 : Css.Style
neg_my_96 =
    Css.batch
        [ Css.property "margin-top" "-24rem"
        , Css.property "margin-bottom" "-24rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-my-px {
  margin-top: -1px;
  margin-bottom: -1px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_my_px : Css.Style
neg_my_px =
    Css.batch
        [ Css.property "margin-top" "-1px"
        , Css.property "margin-bottom" "-1px"
        ]


{-| This class has the effect of following css declaration:

```css
.-right-0 {
  right: 0px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_right_0 : Css.Style
neg_right_0 =
    Css.property "right" "0px"


{-| This class has the effect of following css declaration:

```css
.-right-0\.5 {
  right: -0.125rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_right_0_dot_5 : Css.Style
neg_right_0_dot_5 =
    Css.property "right" "-0.125rem"


{-| This class has the effect of following css declaration:

```css
.-right-1 {
  right: -0.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_right_1 : Css.Style
neg_right_1 =
    Css.property "right" "-0.25rem"


{-| This class has the effect of following css declaration:

```css
.-right-10 {
  right: -2.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_right_10 : Css.Style
neg_right_10 =
    Css.property "right" "-2.5rem"


{-| This class has the effect of following css declaration:

```css
.-right-11 {
  right: -2.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_right_11 : Css.Style
neg_right_11 =
    Css.property "right" "-2.75rem"


{-| This class has the effect of following css declaration:

```css
.-right-12 {
  right: -3rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_right_12 : Css.Style
neg_right_12 =
    Css.property "right" "-3rem"


{-| This class has the effect of following css declaration:

```css
.-right-14 {
  right: -3.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_right_14 : Css.Style
neg_right_14 =
    Css.property "right" "-3.5rem"


{-| This class has the effect of following css declaration:

```css
.-right-16 {
  right: -4rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_right_16 : Css.Style
neg_right_16 =
    Css.property "right" "-4rem"


{-| This class has the effect of following css declaration:

```css
.-right-1\.5 {
  right: -0.375rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_right_1_dot_5 : Css.Style
neg_right_1_dot_5 =
    Css.property "right" "-0.375rem"


{-| This class has the effect of following css declaration:

```css
.-right-1\/2 {
  right: -50%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_right_1over2 : Css.Style
neg_right_1over2 =
    Css.property "right" "-50%"


{-| This class has the effect of following css declaration:

```css
.-right-1\/3 {
  right: -33.333333%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_right_1over3 : Css.Style
neg_right_1over3 =
    Css.property "right" "-33.333333%"


{-| This class has the effect of following css declaration:

```css
.-right-1\/4 {
  right: -25%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_right_1over4 : Css.Style
neg_right_1over4 =
    Css.property "right" "-25%"


{-| This class has the effect of following css declaration:

```css
.-right-2 {
  right: -0.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_right_2 : Css.Style
neg_right_2 =
    Css.property "right" "-0.5rem"


{-| This class has the effect of following css declaration:

```css
.-right-20 {
  right: -5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_right_20 : Css.Style
neg_right_20 =
    Css.property "right" "-5rem"


{-| This class has the effect of following css declaration:

```css
.-right-24 {
  right: -6rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_right_24 : Css.Style
neg_right_24 =
    Css.property "right" "-6rem"


{-| This class has the effect of following css declaration:

```css
.-right-28 {
  right: -7rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_right_28 : Css.Style
neg_right_28 =
    Css.property "right" "-7rem"


{-| This class has the effect of following css declaration:

```css
.-right-2\.5 {
  right: -0.625rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_right_2_dot_5 : Css.Style
neg_right_2_dot_5 =
    Css.property "right" "-0.625rem"


{-| This class has the effect of following css declaration:

```css
.-right-2\/3 {
  right: -66.666667%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_right_2over3 : Css.Style
neg_right_2over3 =
    Css.property "right" "-66.666667%"


{-| This class has the effect of following css declaration:

```css
.-right-2\/4 {
  right: -50%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_right_2over4 : Css.Style
neg_right_2over4 =
    Css.property "right" "-50%"


{-| This class has the effect of following css declaration:

```css
.-right-3 {
  right: -0.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_right_3 : Css.Style
neg_right_3 =
    Css.property "right" "-0.75rem"


{-| This class has the effect of following css declaration:

```css
.-right-32 {
  right: -8rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_right_32 : Css.Style
neg_right_32 =
    Css.property "right" "-8rem"


{-| This class has the effect of following css declaration:

```css
.-right-36 {
  right: -9rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_right_36 : Css.Style
neg_right_36 =
    Css.property "right" "-9rem"


{-| This class has the effect of following css declaration:

```css
.-right-3\.5 {
  right: -0.875rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_right_3_dot_5 : Css.Style
neg_right_3_dot_5 =
    Css.property "right" "-0.875rem"


{-| This class has the effect of following css declaration:

```css
.-right-3\/4 {
  right: -75%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_right_3over4 : Css.Style
neg_right_3over4 =
    Css.property "right" "-75%"


{-| This class has the effect of following css declaration:

```css
.-right-4 {
  right: -1rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_right_4 : Css.Style
neg_right_4 =
    Css.property "right" "-1rem"


{-| This class has the effect of following css declaration:

```css
.-right-40 {
  right: -10rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_right_40 : Css.Style
neg_right_40 =
    Css.property "right" "-10rem"


{-| This class has the effect of following css declaration:

```css
.-right-44 {
  right: -11rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_right_44 : Css.Style
neg_right_44 =
    Css.property "right" "-11rem"


{-| This class has the effect of following css declaration:

```css
.-right-48 {
  right: -12rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_right_48 : Css.Style
neg_right_48 =
    Css.property "right" "-12rem"


{-| This class has the effect of following css declaration:

```css
.-right-5 {
  right: -1.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_right_5 : Css.Style
neg_right_5 =
    Css.property "right" "-1.25rem"


{-| This class has the effect of following css declaration:

```css
.-right-52 {
  right: -13rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_right_52 : Css.Style
neg_right_52 =
    Css.property "right" "-13rem"


{-| This class has the effect of following css declaration:

```css
.-right-56 {
  right: -14rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_right_56 : Css.Style
neg_right_56 =
    Css.property "right" "-14rem"


{-| This class has the effect of following css declaration:

```css
.-right-6 {
  right: -1.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_right_6 : Css.Style
neg_right_6 =
    Css.property "right" "-1.5rem"


{-| This class has the effect of following css declaration:

```css
.-right-60 {
  right: -15rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_right_60 : Css.Style
neg_right_60 =
    Css.property "right" "-15rem"


{-| This class has the effect of following css declaration:

```css
.-right-64 {
  right: -16rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_right_64 : Css.Style
neg_right_64 =
    Css.property "right" "-16rem"


{-| This class has the effect of following css declaration:

```css
.-right-7 {
  right: -1.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_right_7 : Css.Style
neg_right_7 =
    Css.property "right" "-1.75rem"


{-| This class has the effect of following css declaration:

```css
.-right-72 {
  right: -18rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_right_72 : Css.Style
neg_right_72 =
    Css.property "right" "-18rem"


{-| This class has the effect of following css declaration:

```css
.-right-8 {
  right: -2rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_right_8 : Css.Style
neg_right_8 =
    Css.property "right" "-2rem"


{-| This class has the effect of following css declaration:

```css
.-right-80 {
  right: -20rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_right_80 : Css.Style
neg_right_80 =
    Css.property "right" "-20rem"


{-| This class has the effect of following css declaration:

```css
.-right-9 {
  right: -2.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_right_9 : Css.Style
neg_right_9 =
    Css.property "right" "-2.25rem"


{-| This class has the effect of following css declaration:

```css
.-right-96 {
  right: -24rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_right_96 : Css.Style
neg_right_96 =
    Css.property "right" "-24rem"


{-| This class has the effect of following css declaration:

```css
.-right-full {
  right: -100%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_right_full : Css.Style
neg_right_full =
    Css.property "right" "-100%"


{-| This class has the effect of following css declaration:

```css
.-right-px {
  right: -1px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_right_px : Css.Style
neg_right_px =
    Css.property "right" "-1px"


{-| This class has the effect of following css declaration:

```css
.-rotate-1 {
  --tw-rotate: -1deg
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_rotate_1 : Css.Style
neg_rotate_1 =
    Css.property "--tw-rotate" "-1deg"


{-| This class has the effect of following css declaration:

```css
.-rotate-12 {
  --tw-rotate: -12deg
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_rotate_12 : Css.Style
neg_rotate_12 =
    Css.property "--tw-rotate" "-12deg"


{-| This class has the effect of following css declaration:

```css
.-rotate-180 {
  --tw-rotate: -180deg
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_rotate_180 : Css.Style
neg_rotate_180 =
    Css.property "--tw-rotate" "-180deg"


{-| This class has the effect of following css declaration:

```css
.-rotate-2 {
  --tw-rotate: -2deg
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_rotate_2 : Css.Style
neg_rotate_2 =
    Css.property "--tw-rotate" "-2deg"


{-| This class has the effect of following css declaration:

```css
.-rotate-3 {
  --tw-rotate: -3deg
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_rotate_3 : Css.Style
neg_rotate_3 =
    Css.property "--tw-rotate" "-3deg"


{-| This class has the effect of following css declaration:

```css
.-rotate-45 {
  --tw-rotate: -45deg
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_rotate_45 : Css.Style
neg_rotate_45 =
    Css.property "--tw-rotate" "-45deg"


{-| This class has the effect of following css declaration:

```css
.-rotate-6 {
  --tw-rotate: -6deg
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_rotate_6 : Css.Style
neg_rotate_6 =
    Css.property "--tw-rotate" "-6deg"


{-| This class has the effect of following css declaration:

```css
.-rotate-90 {
  --tw-rotate: -90deg
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_rotate_90 : Css.Style
neg_rotate_90 =
    Css.property "--tw-rotate" "-90deg"


{-| This class has the effect of following css declaration:

```css
.-skew-x-1 {
  --tw-skew-x: -1deg
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_skew_x_1 : Css.Style
neg_skew_x_1 =
    Css.property "--tw-skew-x" "-1deg"


{-| This class has the effect of following css declaration:

```css
.-skew-x-12 {
  --tw-skew-x: -12deg
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_skew_x_12 : Css.Style
neg_skew_x_12 =
    Css.property "--tw-skew-x" "-12deg"


{-| This class has the effect of following css declaration:

```css
.-skew-x-2 {
  --tw-skew-x: -2deg
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_skew_x_2 : Css.Style
neg_skew_x_2 =
    Css.property "--tw-skew-x" "-2deg"


{-| This class has the effect of following css declaration:

```css
.-skew-x-3 {
  --tw-skew-x: -3deg
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_skew_x_3 : Css.Style
neg_skew_x_3 =
    Css.property "--tw-skew-x" "-3deg"


{-| This class has the effect of following css declaration:

```css
.-skew-x-6 {
  --tw-skew-x: -6deg
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_skew_x_6 : Css.Style
neg_skew_x_6 =
    Css.property "--tw-skew-x" "-6deg"


{-| This class has the effect of following css declaration:

```css
.-skew-y-1 {
  --tw-skew-y: -1deg
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_skew_y_1 : Css.Style
neg_skew_y_1 =
    Css.property "--tw-skew-y" "-1deg"


{-| This class has the effect of following css declaration:

```css
.-skew-y-12 {
  --tw-skew-y: -12deg
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_skew_y_12 : Css.Style
neg_skew_y_12 =
    Css.property "--tw-skew-y" "-12deg"


{-| This class has the effect of following css declaration:

```css
.-skew-y-2 {
  --tw-skew-y: -2deg
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_skew_y_2 : Css.Style
neg_skew_y_2 =
    Css.property "--tw-skew-y" "-2deg"


{-| This class has the effect of following css declaration:

```css
.-skew-y-3 {
  --tw-skew-y: -3deg
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_skew_y_3 : Css.Style
neg_skew_y_3 =
    Css.property "--tw-skew-y" "-3deg"


{-| This class has the effect of following css declaration:

```css
.-skew-y-6 {
  --tw-skew-y: -6deg
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_skew_y_6 : Css.Style
neg_skew_y_6 =
    Css.property "--tw-skew-y" "-6deg"


{-| This class has the effect of following css declaration:

```css
.-space-x-0 > :not([hidden]) ~ :not([hidden]) {
  --tw-space-x-reverse: 0;
  margin-right: calc(0px * var(--tw-space-x-reverse));
  margin-left: calc(0px * calc(1 - var(--tw-space-x-reverse)))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_space_x_0 : Css.Style
neg_space_x_0 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-x-reverse" "0"
                , Css.property "margin-right" "calc(0px * var(--tw-space-x-reverse))"
                , Css.property "margin-left" "calc(0px * calc(1 - var(--tw-space-x-reverse)))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.-space-x-0\.5 > :not([hidden]) ~ :not([hidden]) {
  --tw-space-x-reverse: 0;
  margin-right: calc(-0.125rem * var(--tw-space-x-reverse));
  margin-left: calc(-0.125rem * calc(1 - var(--tw-space-x-reverse)))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_space_x_0_dot_5 : Css.Style
neg_space_x_0_dot_5 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-x-reverse" "0"
                , Css.property "margin-right" "calc(-0.125rem * var(--tw-space-x-reverse))"
                , Css.property "margin-left" "calc(-0.125rem * calc(1 - var(--tw-space-x-reverse)))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.-space-x-1 > :not([hidden]) ~ :not([hidden]) {
  --tw-space-x-reverse: 0;
  margin-right: calc(-0.25rem * var(--tw-space-x-reverse));
  margin-left: calc(-0.25rem * calc(1 - var(--tw-space-x-reverse)))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_space_x_1 : Css.Style
neg_space_x_1 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-x-reverse" "0"
                , Css.property "margin-right" "calc(-0.25rem * var(--tw-space-x-reverse))"
                , Css.property "margin-left" "calc(-0.25rem * calc(1 - var(--tw-space-x-reverse)))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.-space-x-10 > :not([hidden]) ~ :not([hidden]) {
  --tw-space-x-reverse: 0;
  margin-right: calc(-2.5rem * var(--tw-space-x-reverse));
  margin-left: calc(-2.5rem * calc(1 - var(--tw-space-x-reverse)))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_space_x_10 : Css.Style
neg_space_x_10 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-x-reverse" "0"
                , Css.property "margin-right" "calc(-2.5rem * var(--tw-space-x-reverse))"
                , Css.property "margin-left" "calc(-2.5rem * calc(1 - var(--tw-space-x-reverse)))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.-space-x-11 > :not([hidden]) ~ :not([hidden]) {
  --tw-space-x-reverse: 0;
  margin-right: calc(-2.75rem * var(--tw-space-x-reverse));
  margin-left: calc(-2.75rem * calc(1 - var(--tw-space-x-reverse)))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_space_x_11 : Css.Style
neg_space_x_11 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-x-reverse" "0"
                , Css.property "margin-right" "calc(-2.75rem * var(--tw-space-x-reverse))"
                , Css.property "margin-left" "calc(-2.75rem * calc(1 - var(--tw-space-x-reverse)))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.-space-x-12 > :not([hidden]) ~ :not([hidden]) {
  --tw-space-x-reverse: 0;
  margin-right: calc(-3rem * var(--tw-space-x-reverse));
  margin-left: calc(-3rem * calc(1 - var(--tw-space-x-reverse)))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_space_x_12 : Css.Style
neg_space_x_12 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-x-reverse" "0"
                , Css.property "margin-right" "calc(-3rem * var(--tw-space-x-reverse))"
                , Css.property "margin-left" "calc(-3rem * calc(1 - var(--tw-space-x-reverse)))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.-space-x-14 > :not([hidden]) ~ :not([hidden]) {
  --tw-space-x-reverse: 0;
  margin-right: calc(-3.5rem * var(--tw-space-x-reverse));
  margin-left: calc(-3.5rem * calc(1 - var(--tw-space-x-reverse)))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_space_x_14 : Css.Style
neg_space_x_14 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-x-reverse" "0"
                , Css.property "margin-right" "calc(-3.5rem * var(--tw-space-x-reverse))"
                , Css.property "margin-left" "calc(-3.5rem * calc(1 - var(--tw-space-x-reverse)))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.-space-x-16 > :not([hidden]) ~ :not([hidden]) {
  --tw-space-x-reverse: 0;
  margin-right: calc(-4rem * var(--tw-space-x-reverse));
  margin-left: calc(-4rem * calc(1 - var(--tw-space-x-reverse)))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_space_x_16 : Css.Style
neg_space_x_16 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-x-reverse" "0"
                , Css.property "margin-right" "calc(-4rem * var(--tw-space-x-reverse))"
                , Css.property "margin-left" "calc(-4rem * calc(1 - var(--tw-space-x-reverse)))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.-space-x-1\.5 > :not([hidden]) ~ :not([hidden]) {
  --tw-space-x-reverse: 0;
  margin-right: calc(-0.375rem * var(--tw-space-x-reverse));
  margin-left: calc(-0.375rem * calc(1 - var(--tw-space-x-reverse)))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_space_x_1_dot_5 : Css.Style
neg_space_x_1_dot_5 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-x-reverse" "0"
                , Css.property "margin-right" "calc(-0.375rem * var(--tw-space-x-reverse))"
                , Css.property "margin-left" "calc(-0.375rem * calc(1 - var(--tw-space-x-reverse)))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.-space-x-2 > :not([hidden]) ~ :not([hidden]) {
  --tw-space-x-reverse: 0;
  margin-right: calc(-0.5rem * var(--tw-space-x-reverse));
  margin-left: calc(-0.5rem * calc(1 - var(--tw-space-x-reverse)))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_space_x_2 : Css.Style
neg_space_x_2 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-x-reverse" "0"
                , Css.property "margin-right" "calc(-0.5rem * var(--tw-space-x-reverse))"
                , Css.property "margin-left" "calc(-0.5rem * calc(1 - var(--tw-space-x-reverse)))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.-space-x-20 > :not([hidden]) ~ :not([hidden]) {
  --tw-space-x-reverse: 0;
  margin-right: calc(-5rem * var(--tw-space-x-reverse));
  margin-left: calc(-5rem * calc(1 - var(--tw-space-x-reverse)))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_space_x_20 : Css.Style
neg_space_x_20 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-x-reverse" "0"
                , Css.property "margin-right" "calc(-5rem * var(--tw-space-x-reverse))"
                , Css.property "margin-left" "calc(-5rem * calc(1 - var(--tw-space-x-reverse)))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.-space-x-24 > :not([hidden]) ~ :not([hidden]) {
  --tw-space-x-reverse: 0;
  margin-right: calc(-6rem * var(--tw-space-x-reverse));
  margin-left: calc(-6rem * calc(1 - var(--tw-space-x-reverse)))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_space_x_24 : Css.Style
neg_space_x_24 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-x-reverse" "0"
                , Css.property "margin-right" "calc(-6rem * var(--tw-space-x-reverse))"
                , Css.property "margin-left" "calc(-6rem * calc(1 - var(--tw-space-x-reverse)))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.-space-x-28 > :not([hidden]) ~ :not([hidden]) {
  --tw-space-x-reverse: 0;
  margin-right: calc(-7rem * var(--tw-space-x-reverse));
  margin-left: calc(-7rem * calc(1 - var(--tw-space-x-reverse)))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_space_x_28 : Css.Style
neg_space_x_28 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-x-reverse" "0"
                , Css.property "margin-right" "calc(-7rem * var(--tw-space-x-reverse))"
                , Css.property "margin-left" "calc(-7rem * calc(1 - var(--tw-space-x-reverse)))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.-space-x-2\.5 > :not([hidden]) ~ :not([hidden]) {
  --tw-space-x-reverse: 0;
  margin-right: calc(-0.625rem * var(--tw-space-x-reverse));
  margin-left: calc(-0.625rem * calc(1 - var(--tw-space-x-reverse)))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_space_x_2_dot_5 : Css.Style
neg_space_x_2_dot_5 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-x-reverse" "0"
                , Css.property "margin-right" "calc(-0.625rem * var(--tw-space-x-reverse))"
                , Css.property "margin-left" "calc(-0.625rem * calc(1 - var(--tw-space-x-reverse)))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.-space-x-3 > :not([hidden]) ~ :not([hidden]) {
  --tw-space-x-reverse: 0;
  margin-right: calc(-0.75rem * var(--tw-space-x-reverse));
  margin-left: calc(-0.75rem * calc(1 - var(--tw-space-x-reverse)))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_space_x_3 : Css.Style
neg_space_x_3 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-x-reverse" "0"
                , Css.property "margin-right" "calc(-0.75rem * var(--tw-space-x-reverse))"
                , Css.property "margin-left" "calc(-0.75rem * calc(1 - var(--tw-space-x-reverse)))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.-space-x-32 > :not([hidden]) ~ :not([hidden]) {
  --tw-space-x-reverse: 0;
  margin-right: calc(-8rem * var(--tw-space-x-reverse));
  margin-left: calc(-8rem * calc(1 - var(--tw-space-x-reverse)))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_space_x_32 : Css.Style
neg_space_x_32 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-x-reverse" "0"
                , Css.property "margin-right" "calc(-8rem * var(--tw-space-x-reverse))"
                , Css.property "margin-left" "calc(-8rem * calc(1 - var(--tw-space-x-reverse)))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.-space-x-36 > :not([hidden]) ~ :not([hidden]) {
  --tw-space-x-reverse: 0;
  margin-right: calc(-9rem * var(--tw-space-x-reverse));
  margin-left: calc(-9rem * calc(1 - var(--tw-space-x-reverse)))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_space_x_36 : Css.Style
neg_space_x_36 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-x-reverse" "0"
                , Css.property "margin-right" "calc(-9rem * var(--tw-space-x-reverse))"
                , Css.property "margin-left" "calc(-9rem * calc(1 - var(--tw-space-x-reverse)))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.-space-x-3\.5 > :not([hidden]) ~ :not([hidden]) {
  --tw-space-x-reverse: 0;
  margin-right: calc(-0.875rem * var(--tw-space-x-reverse));
  margin-left: calc(-0.875rem * calc(1 - var(--tw-space-x-reverse)))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_space_x_3_dot_5 : Css.Style
neg_space_x_3_dot_5 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-x-reverse" "0"
                , Css.property "margin-right" "calc(-0.875rem * var(--tw-space-x-reverse))"
                , Css.property "margin-left" "calc(-0.875rem * calc(1 - var(--tw-space-x-reverse)))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.-space-x-4 > :not([hidden]) ~ :not([hidden]) {
  --tw-space-x-reverse: 0;
  margin-right: calc(-1rem * var(--tw-space-x-reverse));
  margin-left: calc(-1rem * calc(1 - var(--tw-space-x-reverse)))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_space_x_4 : Css.Style
neg_space_x_4 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-x-reverse" "0"
                , Css.property "margin-right" "calc(-1rem * var(--tw-space-x-reverse))"
                , Css.property "margin-left" "calc(-1rem * calc(1 - var(--tw-space-x-reverse)))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.-space-x-40 > :not([hidden]) ~ :not([hidden]) {
  --tw-space-x-reverse: 0;
  margin-right: calc(-10rem * var(--tw-space-x-reverse));
  margin-left: calc(-10rem * calc(1 - var(--tw-space-x-reverse)))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_space_x_40 : Css.Style
neg_space_x_40 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-x-reverse" "0"
                , Css.property "margin-right" "calc(-10rem * var(--tw-space-x-reverse))"
                , Css.property "margin-left" "calc(-10rem * calc(1 - var(--tw-space-x-reverse)))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.-space-x-44 > :not([hidden]) ~ :not([hidden]) {
  --tw-space-x-reverse: 0;
  margin-right: calc(-11rem * var(--tw-space-x-reverse));
  margin-left: calc(-11rem * calc(1 - var(--tw-space-x-reverse)))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_space_x_44 : Css.Style
neg_space_x_44 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-x-reverse" "0"
                , Css.property "margin-right" "calc(-11rem * var(--tw-space-x-reverse))"
                , Css.property "margin-left" "calc(-11rem * calc(1 - var(--tw-space-x-reverse)))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.-space-x-48 > :not([hidden]) ~ :not([hidden]) {
  --tw-space-x-reverse: 0;
  margin-right: calc(-12rem * var(--tw-space-x-reverse));
  margin-left: calc(-12rem * calc(1 - var(--tw-space-x-reverse)))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_space_x_48 : Css.Style
neg_space_x_48 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-x-reverse" "0"
                , Css.property "margin-right" "calc(-12rem * var(--tw-space-x-reverse))"
                , Css.property "margin-left" "calc(-12rem * calc(1 - var(--tw-space-x-reverse)))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.-space-x-5 > :not([hidden]) ~ :not([hidden]) {
  --tw-space-x-reverse: 0;
  margin-right: calc(-1.25rem * var(--tw-space-x-reverse));
  margin-left: calc(-1.25rem * calc(1 - var(--tw-space-x-reverse)))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_space_x_5 : Css.Style
neg_space_x_5 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-x-reverse" "0"
                , Css.property "margin-right" "calc(-1.25rem * var(--tw-space-x-reverse))"
                , Css.property "margin-left" "calc(-1.25rem * calc(1 - var(--tw-space-x-reverse)))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.-space-x-52 > :not([hidden]) ~ :not([hidden]) {
  --tw-space-x-reverse: 0;
  margin-right: calc(-13rem * var(--tw-space-x-reverse));
  margin-left: calc(-13rem * calc(1 - var(--tw-space-x-reverse)))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_space_x_52 : Css.Style
neg_space_x_52 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-x-reverse" "0"
                , Css.property "margin-right" "calc(-13rem * var(--tw-space-x-reverse))"
                , Css.property "margin-left" "calc(-13rem * calc(1 - var(--tw-space-x-reverse)))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.-space-x-56 > :not([hidden]) ~ :not([hidden]) {
  --tw-space-x-reverse: 0;
  margin-right: calc(-14rem * var(--tw-space-x-reverse));
  margin-left: calc(-14rem * calc(1 - var(--tw-space-x-reverse)))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_space_x_56 : Css.Style
neg_space_x_56 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-x-reverse" "0"
                , Css.property "margin-right" "calc(-14rem * var(--tw-space-x-reverse))"
                , Css.property "margin-left" "calc(-14rem * calc(1 - var(--tw-space-x-reverse)))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.-space-x-6 > :not([hidden]) ~ :not([hidden]) {
  --tw-space-x-reverse: 0;
  margin-right: calc(-1.5rem * var(--tw-space-x-reverse));
  margin-left: calc(-1.5rem * calc(1 - var(--tw-space-x-reverse)))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_space_x_6 : Css.Style
neg_space_x_6 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-x-reverse" "0"
                , Css.property "margin-right" "calc(-1.5rem * var(--tw-space-x-reverse))"
                , Css.property "margin-left" "calc(-1.5rem * calc(1 - var(--tw-space-x-reverse)))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.-space-x-60 > :not([hidden]) ~ :not([hidden]) {
  --tw-space-x-reverse: 0;
  margin-right: calc(-15rem * var(--tw-space-x-reverse));
  margin-left: calc(-15rem * calc(1 - var(--tw-space-x-reverse)))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_space_x_60 : Css.Style
neg_space_x_60 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-x-reverse" "0"
                , Css.property "margin-right" "calc(-15rem * var(--tw-space-x-reverse))"
                , Css.property "margin-left" "calc(-15rem * calc(1 - var(--tw-space-x-reverse)))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.-space-x-64 > :not([hidden]) ~ :not([hidden]) {
  --tw-space-x-reverse: 0;
  margin-right: calc(-16rem * var(--tw-space-x-reverse));
  margin-left: calc(-16rem * calc(1 - var(--tw-space-x-reverse)))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_space_x_64 : Css.Style
neg_space_x_64 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-x-reverse" "0"
                , Css.property "margin-right" "calc(-16rem * var(--tw-space-x-reverse))"
                , Css.property "margin-left" "calc(-16rem * calc(1 - var(--tw-space-x-reverse)))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.-space-x-7 > :not([hidden]) ~ :not([hidden]) {
  --tw-space-x-reverse: 0;
  margin-right: calc(-1.75rem * var(--tw-space-x-reverse));
  margin-left: calc(-1.75rem * calc(1 - var(--tw-space-x-reverse)))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_space_x_7 : Css.Style
neg_space_x_7 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-x-reverse" "0"
                , Css.property "margin-right" "calc(-1.75rem * var(--tw-space-x-reverse))"
                , Css.property "margin-left" "calc(-1.75rem * calc(1 - var(--tw-space-x-reverse)))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.-space-x-72 > :not([hidden]) ~ :not([hidden]) {
  --tw-space-x-reverse: 0;
  margin-right: calc(-18rem * var(--tw-space-x-reverse));
  margin-left: calc(-18rem * calc(1 - var(--tw-space-x-reverse)))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_space_x_72 : Css.Style
neg_space_x_72 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-x-reverse" "0"
                , Css.property "margin-right" "calc(-18rem * var(--tw-space-x-reverse))"
                , Css.property "margin-left" "calc(-18rem * calc(1 - var(--tw-space-x-reverse)))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.-space-x-8 > :not([hidden]) ~ :not([hidden]) {
  --tw-space-x-reverse: 0;
  margin-right: calc(-2rem * var(--tw-space-x-reverse));
  margin-left: calc(-2rem * calc(1 - var(--tw-space-x-reverse)))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_space_x_8 : Css.Style
neg_space_x_8 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-x-reverse" "0"
                , Css.property "margin-right" "calc(-2rem * var(--tw-space-x-reverse))"
                , Css.property "margin-left" "calc(-2rem * calc(1 - var(--tw-space-x-reverse)))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.-space-x-80 > :not([hidden]) ~ :not([hidden]) {
  --tw-space-x-reverse: 0;
  margin-right: calc(-20rem * var(--tw-space-x-reverse));
  margin-left: calc(-20rem * calc(1 - var(--tw-space-x-reverse)))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_space_x_80 : Css.Style
neg_space_x_80 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-x-reverse" "0"
                , Css.property "margin-right" "calc(-20rem * var(--tw-space-x-reverse))"
                , Css.property "margin-left" "calc(-20rem * calc(1 - var(--tw-space-x-reverse)))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.-space-x-9 > :not([hidden]) ~ :not([hidden]) {
  --tw-space-x-reverse: 0;
  margin-right: calc(-2.25rem * var(--tw-space-x-reverse));
  margin-left: calc(-2.25rem * calc(1 - var(--tw-space-x-reverse)))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_space_x_9 : Css.Style
neg_space_x_9 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-x-reverse" "0"
                , Css.property "margin-right" "calc(-2.25rem * var(--tw-space-x-reverse))"
                , Css.property "margin-left" "calc(-2.25rem * calc(1 - var(--tw-space-x-reverse)))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.-space-x-96 > :not([hidden]) ~ :not([hidden]) {
  --tw-space-x-reverse: 0;
  margin-right: calc(-24rem * var(--tw-space-x-reverse));
  margin-left: calc(-24rem * calc(1 - var(--tw-space-x-reverse)))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_space_x_96 : Css.Style
neg_space_x_96 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-x-reverse" "0"
                , Css.property "margin-right" "calc(-24rem * var(--tw-space-x-reverse))"
                , Css.property "margin-left" "calc(-24rem * calc(1 - var(--tw-space-x-reverse)))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.-space-x-px > :not([hidden]) ~ :not([hidden]) {
  --tw-space-x-reverse: 0;
  margin-right: calc(-1px * var(--tw-space-x-reverse));
  margin-left: calc(-1px * calc(1 - var(--tw-space-x-reverse)))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_space_x_px : Css.Style
neg_space_x_px =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-x-reverse" "0"
                , Css.property "margin-right" "calc(-1px * var(--tw-space-x-reverse))"
                , Css.property "margin-left" "calc(-1px * calc(1 - var(--tw-space-x-reverse)))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.-space-y-0 > :not([hidden]) ~ :not([hidden]) {
  --tw-space-y-reverse: 0;
  margin-top: calc(0px * calc(1 - var(--tw-space-y-reverse)));
  margin-bottom: calc(0px * var(--tw-space-y-reverse))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_space_y_0 : Css.Style
neg_space_y_0 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-y-reverse" "0"
                , Css.property "margin-top" "calc(0px * calc(1 - var(--tw-space-y-reverse)))"
                , Css.property "margin-bottom" "calc(0px * var(--tw-space-y-reverse))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.-space-y-0\.5 > :not([hidden]) ~ :not([hidden]) {
  --tw-space-y-reverse: 0;
  margin-top: calc(-0.125rem * calc(1 - var(--tw-space-y-reverse)));
  margin-bottom: calc(-0.125rem * var(--tw-space-y-reverse))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_space_y_0_dot_5 : Css.Style
neg_space_y_0_dot_5 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-y-reverse" "0"
                , Css.property "margin-top" "calc(-0.125rem * calc(1 - var(--tw-space-y-reverse)))"
                , Css.property "margin-bottom" "calc(-0.125rem * var(--tw-space-y-reverse))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.-space-y-1 > :not([hidden]) ~ :not([hidden]) {
  --tw-space-y-reverse: 0;
  margin-top: calc(-0.25rem * calc(1 - var(--tw-space-y-reverse)));
  margin-bottom: calc(-0.25rem * var(--tw-space-y-reverse))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_space_y_1 : Css.Style
neg_space_y_1 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-y-reverse" "0"
                , Css.property "margin-top" "calc(-0.25rem * calc(1 - var(--tw-space-y-reverse)))"
                , Css.property "margin-bottom" "calc(-0.25rem * var(--tw-space-y-reverse))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.-space-y-10 > :not([hidden]) ~ :not([hidden]) {
  --tw-space-y-reverse: 0;
  margin-top: calc(-2.5rem * calc(1 - var(--tw-space-y-reverse)));
  margin-bottom: calc(-2.5rem * var(--tw-space-y-reverse))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_space_y_10 : Css.Style
neg_space_y_10 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-y-reverse" "0"
                , Css.property "margin-top" "calc(-2.5rem * calc(1 - var(--tw-space-y-reverse)))"
                , Css.property "margin-bottom" "calc(-2.5rem * var(--tw-space-y-reverse))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.-space-y-11 > :not([hidden]) ~ :not([hidden]) {
  --tw-space-y-reverse: 0;
  margin-top: calc(-2.75rem * calc(1 - var(--tw-space-y-reverse)));
  margin-bottom: calc(-2.75rem * var(--tw-space-y-reverse))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_space_y_11 : Css.Style
neg_space_y_11 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-y-reverse" "0"
                , Css.property "margin-top" "calc(-2.75rem * calc(1 - var(--tw-space-y-reverse)))"
                , Css.property "margin-bottom" "calc(-2.75rem * var(--tw-space-y-reverse))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.-space-y-12 > :not([hidden]) ~ :not([hidden]) {
  --tw-space-y-reverse: 0;
  margin-top: calc(-3rem * calc(1 - var(--tw-space-y-reverse)));
  margin-bottom: calc(-3rem * var(--tw-space-y-reverse))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_space_y_12 : Css.Style
neg_space_y_12 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-y-reverse" "0"
                , Css.property "margin-top" "calc(-3rem * calc(1 - var(--tw-space-y-reverse)))"
                , Css.property "margin-bottom" "calc(-3rem * var(--tw-space-y-reverse))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.-space-y-14 > :not([hidden]) ~ :not([hidden]) {
  --tw-space-y-reverse: 0;
  margin-top: calc(-3.5rem * calc(1 - var(--tw-space-y-reverse)));
  margin-bottom: calc(-3.5rem * var(--tw-space-y-reverse))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_space_y_14 : Css.Style
neg_space_y_14 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-y-reverse" "0"
                , Css.property "margin-top" "calc(-3.5rem * calc(1 - var(--tw-space-y-reverse)))"
                , Css.property "margin-bottom" "calc(-3.5rem * var(--tw-space-y-reverse))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.-space-y-16 > :not([hidden]) ~ :not([hidden]) {
  --tw-space-y-reverse: 0;
  margin-top: calc(-4rem * calc(1 - var(--tw-space-y-reverse)));
  margin-bottom: calc(-4rem * var(--tw-space-y-reverse))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_space_y_16 : Css.Style
neg_space_y_16 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-y-reverse" "0"
                , Css.property "margin-top" "calc(-4rem * calc(1 - var(--tw-space-y-reverse)))"
                , Css.property "margin-bottom" "calc(-4rem * var(--tw-space-y-reverse))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.-space-y-1\.5 > :not([hidden]) ~ :not([hidden]) {
  --tw-space-y-reverse: 0;
  margin-top: calc(-0.375rem * calc(1 - var(--tw-space-y-reverse)));
  margin-bottom: calc(-0.375rem * var(--tw-space-y-reverse))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_space_y_1_dot_5 : Css.Style
neg_space_y_1_dot_5 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-y-reverse" "0"
                , Css.property "margin-top" "calc(-0.375rem * calc(1 - var(--tw-space-y-reverse)))"
                , Css.property "margin-bottom" "calc(-0.375rem * var(--tw-space-y-reverse))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.-space-y-2 > :not([hidden]) ~ :not([hidden]) {
  --tw-space-y-reverse: 0;
  margin-top: calc(-0.5rem * calc(1 - var(--tw-space-y-reverse)));
  margin-bottom: calc(-0.5rem * var(--tw-space-y-reverse))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_space_y_2 : Css.Style
neg_space_y_2 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-y-reverse" "0"
                , Css.property "margin-top" "calc(-0.5rem * calc(1 - var(--tw-space-y-reverse)))"
                , Css.property "margin-bottom" "calc(-0.5rem * var(--tw-space-y-reverse))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.-space-y-20 > :not([hidden]) ~ :not([hidden]) {
  --tw-space-y-reverse: 0;
  margin-top: calc(-5rem * calc(1 - var(--tw-space-y-reverse)));
  margin-bottom: calc(-5rem * var(--tw-space-y-reverse))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_space_y_20 : Css.Style
neg_space_y_20 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-y-reverse" "0"
                , Css.property "margin-top" "calc(-5rem * calc(1 - var(--tw-space-y-reverse)))"
                , Css.property "margin-bottom" "calc(-5rem * var(--tw-space-y-reverse))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.-space-y-24 > :not([hidden]) ~ :not([hidden]) {
  --tw-space-y-reverse: 0;
  margin-top: calc(-6rem * calc(1 - var(--tw-space-y-reverse)));
  margin-bottom: calc(-6rem * var(--tw-space-y-reverse))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_space_y_24 : Css.Style
neg_space_y_24 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-y-reverse" "0"
                , Css.property "margin-top" "calc(-6rem * calc(1 - var(--tw-space-y-reverse)))"
                , Css.property "margin-bottom" "calc(-6rem * var(--tw-space-y-reverse))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.-space-y-28 > :not([hidden]) ~ :not([hidden]) {
  --tw-space-y-reverse: 0;
  margin-top: calc(-7rem * calc(1 - var(--tw-space-y-reverse)));
  margin-bottom: calc(-7rem * var(--tw-space-y-reverse))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_space_y_28 : Css.Style
neg_space_y_28 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-y-reverse" "0"
                , Css.property "margin-top" "calc(-7rem * calc(1 - var(--tw-space-y-reverse)))"
                , Css.property "margin-bottom" "calc(-7rem * var(--tw-space-y-reverse))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.-space-y-2\.5 > :not([hidden]) ~ :not([hidden]) {
  --tw-space-y-reverse: 0;
  margin-top: calc(-0.625rem * calc(1 - var(--tw-space-y-reverse)));
  margin-bottom: calc(-0.625rem * var(--tw-space-y-reverse))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_space_y_2_dot_5 : Css.Style
neg_space_y_2_dot_5 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-y-reverse" "0"
                , Css.property "margin-top" "calc(-0.625rem * calc(1 - var(--tw-space-y-reverse)))"
                , Css.property "margin-bottom" "calc(-0.625rem * var(--tw-space-y-reverse))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.-space-y-3 > :not([hidden]) ~ :not([hidden]) {
  --tw-space-y-reverse: 0;
  margin-top: calc(-0.75rem * calc(1 - var(--tw-space-y-reverse)));
  margin-bottom: calc(-0.75rem * var(--tw-space-y-reverse))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_space_y_3 : Css.Style
neg_space_y_3 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-y-reverse" "0"
                , Css.property "margin-top" "calc(-0.75rem * calc(1 - var(--tw-space-y-reverse)))"
                , Css.property "margin-bottom" "calc(-0.75rem * var(--tw-space-y-reverse))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.-space-y-32 > :not([hidden]) ~ :not([hidden]) {
  --tw-space-y-reverse: 0;
  margin-top: calc(-8rem * calc(1 - var(--tw-space-y-reverse)));
  margin-bottom: calc(-8rem * var(--tw-space-y-reverse))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_space_y_32 : Css.Style
neg_space_y_32 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-y-reverse" "0"
                , Css.property "margin-top" "calc(-8rem * calc(1 - var(--tw-space-y-reverse)))"
                , Css.property "margin-bottom" "calc(-8rem * var(--tw-space-y-reverse))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.-space-y-36 > :not([hidden]) ~ :not([hidden]) {
  --tw-space-y-reverse: 0;
  margin-top: calc(-9rem * calc(1 - var(--tw-space-y-reverse)));
  margin-bottom: calc(-9rem * var(--tw-space-y-reverse))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_space_y_36 : Css.Style
neg_space_y_36 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-y-reverse" "0"
                , Css.property "margin-top" "calc(-9rem * calc(1 - var(--tw-space-y-reverse)))"
                , Css.property "margin-bottom" "calc(-9rem * var(--tw-space-y-reverse))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.-space-y-3\.5 > :not([hidden]) ~ :not([hidden]) {
  --tw-space-y-reverse: 0;
  margin-top: calc(-0.875rem * calc(1 - var(--tw-space-y-reverse)));
  margin-bottom: calc(-0.875rem * var(--tw-space-y-reverse))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_space_y_3_dot_5 : Css.Style
neg_space_y_3_dot_5 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-y-reverse" "0"
                , Css.property "margin-top" "calc(-0.875rem * calc(1 - var(--tw-space-y-reverse)))"
                , Css.property "margin-bottom" "calc(-0.875rem * var(--tw-space-y-reverse))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.-space-y-4 > :not([hidden]) ~ :not([hidden]) {
  --tw-space-y-reverse: 0;
  margin-top: calc(-1rem * calc(1 - var(--tw-space-y-reverse)));
  margin-bottom: calc(-1rem * var(--tw-space-y-reverse))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_space_y_4 : Css.Style
neg_space_y_4 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-y-reverse" "0"
                , Css.property "margin-top" "calc(-1rem * calc(1 - var(--tw-space-y-reverse)))"
                , Css.property "margin-bottom" "calc(-1rem * var(--tw-space-y-reverse))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.-space-y-40 > :not([hidden]) ~ :not([hidden]) {
  --tw-space-y-reverse: 0;
  margin-top: calc(-10rem * calc(1 - var(--tw-space-y-reverse)));
  margin-bottom: calc(-10rem * var(--tw-space-y-reverse))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_space_y_40 : Css.Style
neg_space_y_40 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-y-reverse" "0"
                , Css.property "margin-top" "calc(-10rem * calc(1 - var(--tw-space-y-reverse)))"
                , Css.property "margin-bottom" "calc(-10rem * var(--tw-space-y-reverse))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.-space-y-44 > :not([hidden]) ~ :not([hidden]) {
  --tw-space-y-reverse: 0;
  margin-top: calc(-11rem * calc(1 - var(--tw-space-y-reverse)));
  margin-bottom: calc(-11rem * var(--tw-space-y-reverse))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_space_y_44 : Css.Style
neg_space_y_44 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-y-reverse" "0"
                , Css.property "margin-top" "calc(-11rem * calc(1 - var(--tw-space-y-reverse)))"
                , Css.property "margin-bottom" "calc(-11rem * var(--tw-space-y-reverse))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.-space-y-48 > :not([hidden]) ~ :not([hidden]) {
  --tw-space-y-reverse: 0;
  margin-top: calc(-12rem * calc(1 - var(--tw-space-y-reverse)));
  margin-bottom: calc(-12rem * var(--tw-space-y-reverse))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_space_y_48 : Css.Style
neg_space_y_48 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-y-reverse" "0"
                , Css.property "margin-top" "calc(-12rem * calc(1 - var(--tw-space-y-reverse)))"
                , Css.property "margin-bottom" "calc(-12rem * var(--tw-space-y-reverse))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.-space-y-5 > :not([hidden]) ~ :not([hidden]) {
  --tw-space-y-reverse: 0;
  margin-top: calc(-1.25rem * calc(1 - var(--tw-space-y-reverse)));
  margin-bottom: calc(-1.25rem * var(--tw-space-y-reverse))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_space_y_5 : Css.Style
neg_space_y_5 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-y-reverse" "0"
                , Css.property "margin-top" "calc(-1.25rem * calc(1 - var(--tw-space-y-reverse)))"
                , Css.property "margin-bottom" "calc(-1.25rem * var(--tw-space-y-reverse))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.-space-y-52 > :not([hidden]) ~ :not([hidden]) {
  --tw-space-y-reverse: 0;
  margin-top: calc(-13rem * calc(1 - var(--tw-space-y-reverse)));
  margin-bottom: calc(-13rem * var(--tw-space-y-reverse))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_space_y_52 : Css.Style
neg_space_y_52 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-y-reverse" "0"
                , Css.property "margin-top" "calc(-13rem * calc(1 - var(--tw-space-y-reverse)))"
                , Css.property "margin-bottom" "calc(-13rem * var(--tw-space-y-reverse))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.-space-y-56 > :not([hidden]) ~ :not([hidden]) {
  --tw-space-y-reverse: 0;
  margin-top: calc(-14rem * calc(1 - var(--tw-space-y-reverse)));
  margin-bottom: calc(-14rem * var(--tw-space-y-reverse))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_space_y_56 : Css.Style
neg_space_y_56 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-y-reverse" "0"
                , Css.property "margin-top" "calc(-14rem * calc(1 - var(--tw-space-y-reverse)))"
                , Css.property "margin-bottom" "calc(-14rem * var(--tw-space-y-reverse))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.-space-y-6 > :not([hidden]) ~ :not([hidden]) {
  --tw-space-y-reverse: 0;
  margin-top: calc(-1.5rem * calc(1 - var(--tw-space-y-reverse)));
  margin-bottom: calc(-1.5rem * var(--tw-space-y-reverse))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_space_y_6 : Css.Style
neg_space_y_6 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-y-reverse" "0"
                , Css.property "margin-top" "calc(-1.5rem * calc(1 - var(--tw-space-y-reverse)))"
                , Css.property "margin-bottom" "calc(-1.5rem * var(--tw-space-y-reverse))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.-space-y-60 > :not([hidden]) ~ :not([hidden]) {
  --tw-space-y-reverse: 0;
  margin-top: calc(-15rem * calc(1 - var(--tw-space-y-reverse)));
  margin-bottom: calc(-15rem * var(--tw-space-y-reverse))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_space_y_60 : Css.Style
neg_space_y_60 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-y-reverse" "0"
                , Css.property "margin-top" "calc(-15rem * calc(1 - var(--tw-space-y-reverse)))"
                , Css.property "margin-bottom" "calc(-15rem * var(--tw-space-y-reverse))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.-space-y-64 > :not([hidden]) ~ :not([hidden]) {
  --tw-space-y-reverse: 0;
  margin-top: calc(-16rem * calc(1 - var(--tw-space-y-reverse)));
  margin-bottom: calc(-16rem * var(--tw-space-y-reverse))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_space_y_64 : Css.Style
neg_space_y_64 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-y-reverse" "0"
                , Css.property "margin-top" "calc(-16rem * calc(1 - var(--tw-space-y-reverse)))"
                , Css.property "margin-bottom" "calc(-16rem * var(--tw-space-y-reverse))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.-space-y-7 > :not([hidden]) ~ :not([hidden]) {
  --tw-space-y-reverse: 0;
  margin-top: calc(-1.75rem * calc(1 - var(--tw-space-y-reverse)));
  margin-bottom: calc(-1.75rem * var(--tw-space-y-reverse))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_space_y_7 : Css.Style
neg_space_y_7 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-y-reverse" "0"
                , Css.property "margin-top" "calc(-1.75rem * calc(1 - var(--tw-space-y-reverse)))"
                , Css.property "margin-bottom" "calc(-1.75rem * var(--tw-space-y-reverse))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.-space-y-72 > :not([hidden]) ~ :not([hidden]) {
  --tw-space-y-reverse: 0;
  margin-top: calc(-18rem * calc(1 - var(--tw-space-y-reverse)));
  margin-bottom: calc(-18rem * var(--tw-space-y-reverse))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_space_y_72 : Css.Style
neg_space_y_72 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-y-reverse" "0"
                , Css.property "margin-top" "calc(-18rem * calc(1 - var(--tw-space-y-reverse)))"
                , Css.property "margin-bottom" "calc(-18rem * var(--tw-space-y-reverse))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.-space-y-8 > :not([hidden]) ~ :not([hidden]) {
  --tw-space-y-reverse: 0;
  margin-top: calc(-2rem * calc(1 - var(--tw-space-y-reverse)));
  margin-bottom: calc(-2rem * var(--tw-space-y-reverse))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_space_y_8 : Css.Style
neg_space_y_8 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-y-reverse" "0"
                , Css.property "margin-top" "calc(-2rem * calc(1 - var(--tw-space-y-reverse)))"
                , Css.property "margin-bottom" "calc(-2rem * var(--tw-space-y-reverse))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.-space-y-80 > :not([hidden]) ~ :not([hidden]) {
  --tw-space-y-reverse: 0;
  margin-top: calc(-20rem * calc(1 - var(--tw-space-y-reverse)));
  margin-bottom: calc(-20rem * var(--tw-space-y-reverse))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_space_y_80 : Css.Style
neg_space_y_80 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-y-reverse" "0"
                , Css.property "margin-top" "calc(-20rem * calc(1 - var(--tw-space-y-reverse)))"
                , Css.property "margin-bottom" "calc(-20rem * var(--tw-space-y-reverse))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.-space-y-9 > :not([hidden]) ~ :not([hidden]) {
  --tw-space-y-reverse: 0;
  margin-top: calc(-2.25rem * calc(1 - var(--tw-space-y-reverse)));
  margin-bottom: calc(-2.25rem * var(--tw-space-y-reverse))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_space_y_9 : Css.Style
neg_space_y_9 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-y-reverse" "0"
                , Css.property "margin-top" "calc(-2.25rem * calc(1 - var(--tw-space-y-reverse)))"
                , Css.property "margin-bottom" "calc(-2.25rem * var(--tw-space-y-reverse))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.-space-y-96 > :not([hidden]) ~ :not([hidden]) {
  --tw-space-y-reverse: 0;
  margin-top: calc(-24rem * calc(1 - var(--tw-space-y-reverse)));
  margin-bottom: calc(-24rem * var(--tw-space-y-reverse))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_space_y_96 : Css.Style
neg_space_y_96 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-y-reverse" "0"
                , Css.property "margin-top" "calc(-24rem * calc(1 - var(--tw-space-y-reverse)))"
                , Css.property "margin-bottom" "calc(-24rem * var(--tw-space-y-reverse))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.-space-y-px > :not([hidden]) ~ :not([hidden]) {
  --tw-space-y-reverse: 0;
  margin-top: calc(-1px * calc(1 - var(--tw-space-y-reverse)));
  margin-bottom: calc(-1px * var(--tw-space-y-reverse))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_space_y_px : Css.Style
neg_space_y_px =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-space-y-reverse" "0"
                , Css.property "margin-top" "calc(-1px * calc(1 - var(--tw-space-y-reverse)))"
                , Css.property "margin-bottom" "calc(-1px * var(--tw-space-y-reverse))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.-top-0 {
  top: 0px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_top_0 : Css.Style
neg_top_0 =
    Css.property "top" "0px"


{-| This class has the effect of following css declaration:

```css
.-top-0\.5 {
  top: -0.125rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_top_0_dot_5 : Css.Style
neg_top_0_dot_5 =
    Css.property "top" "-0.125rem"


{-| This class has the effect of following css declaration:

```css
.-top-1 {
  top: -0.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_top_1 : Css.Style
neg_top_1 =
    Css.property "top" "-0.25rem"


{-| This class has the effect of following css declaration:

```css
.-top-10 {
  top: -2.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_top_10 : Css.Style
neg_top_10 =
    Css.property "top" "-2.5rem"


{-| This class has the effect of following css declaration:

```css
.-top-11 {
  top: -2.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_top_11 : Css.Style
neg_top_11 =
    Css.property "top" "-2.75rem"


{-| This class has the effect of following css declaration:

```css
.-top-12 {
  top: -3rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_top_12 : Css.Style
neg_top_12 =
    Css.property "top" "-3rem"


{-| This class has the effect of following css declaration:

```css
.-top-14 {
  top: -3.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_top_14 : Css.Style
neg_top_14 =
    Css.property "top" "-3.5rem"


{-| This class has the effect of following css declaration:

```css
.-top-16 {
  top: -4rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_top_16 : Css.Style
neg_top_16 =
    Css.property "top" "-4rem"


{-| This class has the effect of following css declaration:

```css
.-top-1\.5 {
  top: -0.375rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_top_1_dot_5 : Css.Style
neg_top_1_dot_5 =
    Css.property "top" "-0.375rem"


{-| This class has the effect of following css declaration:

```css
.-top-1\/2 {
  top: -50%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_top_1over2 : Css.Style
neg_top_1over2 =
    Css.property "top" "-50%"


{-| This class has the effect of following css declaration:

```css
.-top-1\/3 {
  top: -33.333333%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_top_1over3 : Css.Style
neg_top_1over3 =
    Css.property "top" "-33.333333%"


{-| This class has the effect of following css declaration:

```css
.-top-1\/4 {
  top: -25%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_top_1over4 : Css.Style
neg_top_1over4 =
    Css.property "top" "-25%"


{-| This class has the effect of following css declaration:

```css
.-top-2 {
  top: -0.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_top_2 : Css.Style
neg_top_2 =
    Css.property "top" "-0.5rem"


{-| This class has the effect of following css declaration:

```css
.-top-20 {
  top: -5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_top_20 : Css.Style
neg_top_20 =
    Css.property "top" "-5rem"


{-| This class has the effect of following css declaration:

```css
.-top-24 {
  top: -6rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_top_24 : Css.Style
neg_top_24 =
    Css.property "top" "-6rem"


{-| This class has the effect of following css declaration:

```css
.-top-28 {
  top: -7rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_top_28 : Css.Style
neg_top_28 =
    Css.property "top" "-7rem"


{-| This class has the effect of following css declaration:

```css
.-top-2\.5 {
  top: -0.625rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_top_2_dot_5 : Css.Style
neg_top_2_dot_5 =
    Css.property "top" "-0.625rem"


{-| This class has the effect of following css declaration:

```css
.-top-2\/3 {
  top: -66.666667%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_top_2over3 : Css.Style
neg_top_2over3 =
    Css.property "top" "-66.666667%"


{-| This class has the effect of following css declaration:

```css
.-top-2\/4 {
  top: -50%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_top_2over4 : Css.Style
neg_top_2over4 =
    Css.property "top" "-50%"


{-| This class has the effect of following css declaration:

```css
.-top-3 {
  top: -0.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_top_3 : Css.Style
neg_top_3 =
    Css.property "top" "-0.75rem"


{-| This class has the effect of following css declaration:

```css
.-top-32 {
  top: -8rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_top_32 : Css.Style
neg_top_32 =
    Css.property "top" "-8rem"


{-| This class has the effect of following css declaration:

```css
.-top-36 {
  top: -9rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_top_36 : Css.Style
neg_top_36 =
    Css.property "top" "-9rem"


{-| This class has the effect of following css declaration:

```css
.-top-3\.5 {
  top: -0.875rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_top_3_dot_5 : Css.Style
neg_top_3_dot_5 =
    Css.property "top" "-0.875rem"


{-| This class has the effect of following css declaration:

```css
.-top-3\/4 {
  top: -75%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_top_3over4 : Css.Style
neg_top_3over4 =
    Css.property "top" "-75%"


{-| This class has the effect of following css declaration:

```css
.-top-4 {
  top: -1rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_top_4 : Css.Style
neg_top_4 =
    Css.property "top" "-1rem"


{-| This class has the effect of following css declaration:

```css
.-top-40 {
  top: -10rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_top_40 : Css.Style
neg_top_40 =
    Css.property "top" "-10rem"


{-| This class has the effect of following css declaration:

```css
.-top-44 {
  top: -11rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_top_44 : Css.Style
neg_top_44 =
    Css.property "top" "-11rem"


{-| This class has the effect of following css declaration:

```css
.-top-48 {
  top: -12rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_top_48 : Css.Style
neg_top_48 =
    Css.property "top" "-12rem"


{-| This class has the effect of following css declaration:

```css
.-top-5 {
  top: -1.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_top_5 : Css.Style
neg_top_5 =
    Css.property "top" "-1.25rem"


{-| This class has the effect of following css declaration:

```css
.-top-52 {
  top: -13rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_top_52 : Css.Style
neg_top_52 =
    Css.property "top" "-13rem"


{-| This class has the effect of following css declaration:

```css
.-top-56 {
  top: -14rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_top_56 : Css.Style
neg_top_56 =
    Css.property "top" "-14rem"


{-| This class has the effect of following css declaration:

```css
.-top-6 {
  top: -1.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_top_6 : Css.Style
neg_top_6 =
    Css.property "top" "-1.5rem"


{-| This class has the effect of following css declaration:

```css
.-top-60 {
  top: -15rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_top_60 : Css.Style
neg_top_60 =
    Css.property "top" "-15rem"


{-| This class has the effect of following css declaration:

```css
.-top-64 {
  top: -16rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_top_64 : Css.Style
neg_top_64 =
    Css.property "top" "-16rem"


{-| This class has the effect of following css declaration:

```css
.-top-7 {
  top: -1.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_top_7 : Css.Style
neg_top_7 =
    Css.property "top" "-1.75rem"


{-| This class has the effect of following css declaration:

```css
.-top-72 {
  top: -18rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_top_72 : Css.Style
neg_top_72 =
    Css.property "top" "-18rem"


{-| This class has the effect of following css declaration:

```css
.-top-8 {
  top: -2rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_top_8 : Css.Style
neg_top_8 =
    Css.property "top" "-2rem"


{-| This class has the effect of following css declaration:

```css
.-top-80 {
  top: -20rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_top_80 : Css.Style
neg_top_80 =
    Css.property "top" "-20rem"


{-| This class has the effect of following css declaration:

```css
.-top-9 {
  top: -2.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_top_9 : Css.Style
neg_top_9 =
    Css.property "top" "-2.25rem"


{-| This class has the effect of following css declaration:

```css
.-top-96 {
  top: -24rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_top_96 : Css.Style
neg_top_96 =
    Css.property "top" "-24rem"


{-| This class has the effect of following css declaration:

```css
.-top-full {
  top: -100%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_top_full : Css.Style
neg_top_full =
    Css.property "top" "-100%"


{-| This class has the effect of following css declaration:

```css
.-top-px {
  top: -1px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_top_px : Css.Style
neg_top_px =
    Css.property "top" "-1px"


{-| This class has the effect of following css declaration:

```css
.-translate-x-0 {
  --tw-translate-x: 0px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_translate_x_0 : Css.Style
neg_translate_x_0 =
    Css.property "--tw-translate-x" "0px"


{-| This class has the effect of following css declaration:

```css
.-translate-x-0\.5 {
  --tw-translate-x: -0.125rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_translate_x_0_dot_5 : Css.Style
neg_translate_x_0_dot_5 =
    Css.property "--tw-translate-x" "-0.125rem"


{-| This class has the effect of following css declaration:

```css
.-translate-x-1 {
  --tw-translate-x: -0.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_translate_x_1 : Css.Style
neg_translate_x_1 =
    Css.property "--tw-translate-x" "-0.25rem"


{-| This class has the effect of following css declaration:

```css
.-translate-x-10 {
  --tw-translate-x: -2.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_translate_x_10 : Css.Style
neg_translate_x_10 =
    Css.property "--tw-translate-x" "-2.5rem"


{-| This class has the effect of following css declaration:

```css
.-translate-x-11 {
  --tw-translate-x: -2.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_translate_x_11 : Css.Style
neg_translate_x_11 =
    Css.property "--tw-translate-x" "-2.75rem"


{-| This class has the effect of following css declaration:

```css
.-translate-x-12 {
  --tw-translate-x: -3rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_translate_x_12 : Css.Style
neg_translate_x_12 =
    Css.property "--tw-translate-x" "-3rem"


{-| This class has the effect of following css declaration:

```css
.-translate-x-14 {
  --tw-translate-x: -3.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_translate_x_14 : Css.Style
neg_translate_x_14 =
    Css.property "--tw-translate-x" "-3.5rem"


{-| This class has the effect of following css declaration:

```css
.-translate-x-16 {
  --tw-translate-x: -4rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_translate_x_16 : Css.Style
neg_translate_x_16 =
    Css.property "--tw-translate-x" "-4rem"


{-| This class has the effect of following css declaration:

```css
.-translate-x-1\.5 {
  --tw-translate-x: -0.375rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_translate_x_1_dot_5 : Css.Style
neg_translate_x_1_dot_5 =
    Css.property "--tw-translate-x" "-0.375rem"


{-| This class has the effect of following css declaration:

```css
.-translate-x-1\/2 {
  --tw-translate-x: -50%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_translate_x_1over2 : Css.Style
neg_translate_x_1over2 =
    Css.property "--tw-translate-x" "-50%"


{-| This class has the effect of following css declaration:

```css
.-translate-x-1\/3 {
  --tw-translate-x: -33.333333%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_translate_x_1over3 : Css.Style
neg_translate_x_1over3 =
    Css.property "--tw-translate-x" "-33.333333%"


{-| This class has the effect of following css declaration:

```css
.-translate-x-1\/4 {
  --tw-translate-x: -25%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_translate_x_1over4 : Css.Style
neg_translate_x_1over4 =
    Css.property "--tw-translate-x" "-25%"


{-| This class has the effect of following css declaration:

```css
.-translate-x-2 {
  --tw-translate-x: -0.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_translate_x_2 : Css.Style
neg_translate_x_2 =
    Css.property "--tw-translate-x" "-0.5rem"


{-| This class has the effect of following css declaration:

```css
.-translate-x-20 {
  --tw-translate-x: -5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_translate_x_20 : Css.Style
neg_translate_x_20 =
    Css.property "--tw-translate-x" "-5rem"


{-| This class has the effect of following css declaration:

```css
.-translate-x-24 {
  --tw-translate-x: -6rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_translate_x_24 : Css.Style
neg_translate_x_24 =
    Css.property "--tw-translate-x" "-6rem"


{-| This class has the effect of following css declaration:

```css
.-translate-x-28 {
  --tw-translate-x: -7rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_translate_x_28 : Css.Style
neg_translate_x_28 =
    Css.property "--tw-translate-x" "-7rem"


{-| This class has the effect of following css declaration:

```css
.-translate-x-2\.5 {
  --tw-translate-x: -0.625rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_translate_x_2_dot_5 : Css.Style
neg_translate_x_2_dot_5 =
    Css.property "--tw-translate-x" "-0.625rem"


{-| This class has the effect of following css declaration:

```css
.-translate-x-2\/3 {
  --tw-translate-x: -66.666667%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_translate_x_2over3 : Css.Style
neg_translate_x_2over3 =
    Css.property "--tw-translate-x" "-66.666667%"


{-| This class has the effect of following css declaration:

```css
.-translate-x-2\/4 {
  --tw-translate-x: -50%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_translate_x_2over4 : Css.Style
neg_translate_x_2over4 =
    Css.property "--tw-translate-x" "-50%"


{-| This class has the effect of following css declaration:

```css
.-translate-x-3 {
  --tw-translate-x: -0.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_translate_x_3 : Css.Style
neg_translate_x_3 =
    Css.property "--tw-translate-x" "-0.75rem"


{-| This class has the effect of following css declaration:

```css
.-translate-x-32 {
  --tw-translate-x: -8rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_translate_x_32 : Css.Style
neg_translate_x_32 =
    Css.property "--tw-translate-x" "-8rem"


{-| This class has the effect of following css declaration:

```css
.-translate-x-36 {
  --tw-translate-x: -9rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_translate_x_36 : Css.Style
neg_translate_x_36 =
    Css.property "--tw-translate-x" "-9rem"


{-| This class has the effect of following css declaration:

```css
.-translate-x-3\.5 {
  --tw-translate-x: -0.875rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_translate_x_3_dot_5 : Css.Style
neg_translate_x_3_dot_5 =
    Css.property "--tw-translate-x" "-0.875rem"


{-| This class has the effect of following css declaration:

```css
.-translate-x-3\/4 {
  --tw-translate-x: -75%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_translate_x_3over4 : Css.Style
neg_translate_x_3over4 =
    Css.property "--tw-translate-x" "-75%"


{-| This class has the effect of following css declaration:

```css
.-translate-x-4 {
  --tw-translate-x: -1rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_translate_x_4 : Css.Style
neg_translate_x_4 =
    Css.property "--tw-translate-x" "-1rem"


{-| This class has the effect of following css declaration:

```css
.-translate-x-40 {
  --tw-translate-x: -10rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_translate_x_40 : Css.Style
neg_translate_x_40 =
    Css.property "--tw-translate-x" "-10rem"


{-| This class has the effect of following css declaration:

```css
.-translate-x-44 {
  --tw-translate-x: -11rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_translate_x_44 : Css.Style
neg_translate_x_44 =
    Css.property "--tw-translate-x" "-11rem"


{-| This class has the effect of following css declaration:

```css
.-translate-x-48 {
  --tw-translate-x: -12rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_translate_x_48 : Css.Style
neg_translate_x_48 =
    Css.property "--tw-translate-x" "-12rem"


{-| This class has the effect of following css declaration:

```css
.-translate-x-5 {
  --tw-translate-x: -1.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_translate_x_5 : Css.Style
neg_translate_x_5 =
    Css.property "--tw-translate-x" "-1.25rem"


{-| This class has the effect of following css declaration:

```css
.-translate-x-52 {
  --tw-translate-x: -13rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_translate_x_52 : Css.Style
neg_translate_x_52 =
    Css.property "--tw-translate-x" "-13rem"


{-| This class has the effect of following css declaration:

```css
.-translate-x-56 {
  --tw-translate-x: -14rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_translate_x_56 : Css.Style
neg_translate_x_56 =
    Css.property "--tw-translate-x" "-14rem"


{-| This class has the effect of following css declaration:

```css
.-translate-x-6 {
  --tw-translate-x: -1.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_translate_x_6 : Css.Style
neg_translate_x_6 =
    Css.property "--tw-translate-x" "-1.5rem"


{-| This class has the effect of following css declaration:

```css
.-translate-x-60 {
  --tw-translate-x: -15rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_translate_x_60 : Css.Style
neg_translate_x_60 =
    Css.property "--tw-translate-x" "-15rem"


{-| This class has the effect of following css declaration:

```css
.-translate-x-64 {
  --tw-translate-x: -16rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_translate_x_64 : Css.Style
neg_translate_x_64 =
    Css.property "--tw-translate-x" "-16rem"


{-| This class has the effect of following css declaration:

```css
.-translate-x-7 {
  --tw-translate-x: -1.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_translate_x_7 : Css.Style
neg_translate_x_7 =
    Css.property "--tw-translate-x" "-1.75rem"


{-| This class has the effect of following css declaration:

```css
.-translate-x-72 {
  --tw-translate-x: -18rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_translate_x_72 : Css.Style
neg_translate_x_72 =
    Css.property "--tw-translate-x" "-18rem"


{-| This class has the effect of following css declaration:

```css
.-translate-x-8 {
  --tw-translate-x: -2rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_translate_x_8 : Css.Style
neg_translate_x_8 =
    Css.property "--tw-translate-x" "-2rem"


{-| This class has the effect of following css declaration:

```css
.-translate-x-80 {
  --tw-translate-x: -20rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_translate_x_80 : Css.Style
neg_translate_x_80 =
    Css.property "--tw-translate-x" "-20rem"


{-| This class has the effect of following css declaration:

```css
.-translate-x-9 {
  --tw-translate-x: -2.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_translate_x_9 : Css.Style
neg_translate_x_9 =
    Css.property "--tw-translate-x" "-2.25rem"


{-| This class has the effect of following css declaration:

```css
.-translate-x-96 {
  --tw-translate-x: -24rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_translate_x_96 : Css.Style
neg_translate_x_96 =
    Css.property "--tw-translate-x" "-24rem"


{-| This class has the effect of following css declaration:

```css
.-translate-x-full {
  --tw-translate-x: -100%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_translate_x_full : Css.Style
neg_translate_x_full =
    Css.property "--tw-translate-x" "-100%"


{-| This class has the effect of following css declaration:

```css
.-translate-x-px {
  --tw-translate-x: -1px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_translate_x_px : Css.Style
neg_translate_x_px =
    Css.property "--tw-translate-x" "-1px"


{-| This class has the effect of following css declaration:

```css
.-translate-y-0 {
  --tw-translate-y: 0px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_translate_y_0 : Css.Style
neg_translate_y_0 =
    Css.property "--tw-translate-y" "0px"


{-| This class has the effect of following css declaration:

```css
.-translate-y-0\.5 {
  --tw-translate-y: -0.125rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_translate_y_0_dot_5 : Css.Style
neg_translate_y_0_dot_5 =
    Css.property "--tw-translate-y" "-0.125rem"


{-| This class has the effect of following css declaration:

```css
.-translate-y-1 {
  --tw-translate-y: -0.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_translate_y_1 : Css.Style
neg_translate_y_1 =
    Css.property "--tw-translate-y" "-0.25rem"


{-| This class has the effect of following css declaration:

```css
.-translate-y-10 {
  --tw-translate-y: -2.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_translate_y_10 : Css.Style
neg_translate_y_10 =
    Css.property "--tw-translate-y" "-2.5rem"


{-| This class has the effect of following css declaration:

```css
.-translate-y-11 {
  --tw-translate-y: -2.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_translate_y_11 : Css.Style
neg_translate_y_11 =
    Css.property "--tw-translate-y" "-2.75rem"


{-| This class has the effect of following css declaration:

```css
.-translate-y-12 {
  --tw-translate-y: -3rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_translate_y_12 : Css.Style
neg_translate_y_12 =
    Css.property "--tw-translate-y" "-3rem"


{-| This class has the effect of following css declaration:

```css
.-translate-y-14 {
  --tw-translate-y: -3.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_translate_y_14 : Css.Style
neg_translate_y_14 =
    Css.property "--tw-translate-y" "-3.5rem"


{-| This class has the effect of following css declaration:

```css
.-translate-y-16 {
  --tw-translate-y: -4rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_translate_y_16 : Css.Style
neg_translate_y_16 =
    Css.property "--tw-translate-y" "-4rem"


{-| This class has the effect of following css declaration:

```css
.-translate-y-1\.5 {
  --tw-translate-y: -0.375rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_translate_y_1_dot_5 : Css.Style
neg_translate_y_1_dot_5 =
    Css.property "--tw-translate-y" "-0.375rem"


{-| This class has the effect of following css declaration:

```css
.-translate-y-1\/2 {
  --tw-translate-y: -50%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_translate_y_1over2 : Css.Style
neg_translate_y_1over2 =
    Css.property "--tw-translate-y" "-50%"


{-| This class has the effect of following css declaration:

```css
.-translate-y-1\/3 {
  --tw-translate-y: -33.333333%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_translate_y_1over3 : Css.Style
neg_translate_y_1over3 =
    Css.property "--tw-translate-y" "-33.333333%"


{-| This class has the effect of following css declaration:

```css
.-translate-y-1\/4 {
  --tw-translate-y: -25%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_translate_y_1over4 : Css.Style
neg_translate_y_1over4 =
    Css.property "--tw-translate-y" "-25%"


{-| This class has the effect of following css declaration:

```css
.-translate-y-2 {
  --tw-translate-y: -0.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_translate_y_2 : Css.Style
neg_translate_y_2 =
    Css.property "--tw-translate-y" "-0.5rem"


{-| This class has the effect of following css declaration:

```css
.-translate-y-20 {
  --tw-translate-y: -5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_translate_y_20 : Css.Style
neg_translate_y_20 =
    Css.property "--tw-translate-y" "-5rem"


{-| This class has the effect of following css declaration:

```css
.-translate-y-24 {
  --tw-translate-y: -6rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_translate_y_24 : Css.Style
neg_translate_y_24 =
    Css.property "--tw-translate-y" "-6rem"


{-| This class has the effect of following css declaration:

```css
.-translate-y-28 {
  --tw-translate-y: -7rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_translate_y_28 : Css.Style
neg_translate_y_28 =
    Css.property "--tw-translate-y" "-7rem"


{-| This class has the effect of following css declaration:

```css
.-translate-y-2\.5 {
  --tw-translate-y: -0.625rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_translate_y_2_dot_5 : Css.Style
neg_translate_y_2_dot_5 =
    Css.property "--tw-translate-y" "-0.625rem"


{-| This class has the effect of following css declaration:

```css
.-translate-y-2\/3 {
  --tw-translate-y: -66.666667%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_translate_y_2over3 : Css.Style
neg_translate_y_2over3 =
    Css.property "--tw-translate-y" "-66.666667%"


{-| This class has the effect of following css declaration:

```css
.-translate-y-2\/4 {
  --tw-translate-y: -50%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_translate_y_2over4 : Css.Style
neg_translate_y_2over4 =
    Css.property "--tw-translate-y" "-50%"


{-| This class has the effect of following css declaration:

```css
.-translate-y-3 {
  --tw-translate-y: -0.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_translate_y_3 : Css.Style
neg_translate_y_3 =
    Css.property "--tw-translate-y" "-0.75rem"


{-| This class has the effect of following css declaration:

```css
.-translate-y-32 {
  --tw-translate-y: -8rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_translate_y_32 : Css.Style
neg_translate_y_32 =
    Css.property "--tw-translate-y" "-8rem"


{-| This class has the effect of following css declaration:

```css
.-translate-y-36 {
  --tw-translate-y: -9rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_translate_y_36 : Css.Style
neg_translate_y_36 =
    Css.property "--tw-translate-y" "-9rem"


{-| This class has the effect of following css declaration:

```css
.-translate-y-3\.5 {
  --tw-translate-y: -0.875rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_translate_y_3_dot_5 : Css.Style
neg_translate_y_3_dot_5 =
    Css.property "--tw-translate-y" "-0.875rem"


{-| This class has the effect of following css declaration:

```css
.-translate-y-3\/4 {
  --tw-translate-y: -75%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_translate_y_3over4 : Css.Style
neg_translate_y_3over4 =
    Css.property "--tw-translate-y" "-75%"


{-| This class has the effect of following css declaration:

```css
.-translate-y-4 {
  --tw-translate-y: -1rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_translate_y_4 : Css.Style
neg_translate_y_4 =
    Css.property "--tw-translate-y" "-1rem"


{-| This class has the effect of following css declaration:

```css
.-translate-y-40 {
  --tw-translate-y: -10rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_translate_y_40 : Css.Style
neg_translate_y_40 =
    Css.property "--tw-translate-y" "-10rem"


{-| This class has the effect of following css declaration:

```css
.-translate-y-44 {
  --tw-translate-y: -11rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_translate_y_44 : Css.Style
neg_translate_y_44 =
    Css.property "--tw-translate-y" "-11rem"


{-| This class has the effect of following css declaration:

```css
.-translate-y-48 {
  --tw-translate-y: -12rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_translate_y_48 : Css.Style
neg_translate_y_48 =
    Css.property "--tw-translate-y" "-12rem"


{-| This class has the effect of following css declaration:

```css
.-translate-y-5 {
  --tw-translate-y: -1.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_translate_y_5 : Css.Style
neg_translate_y_5 =
    Css.property "--tw-translate-y" "-1.25rem"


{-| This class has the effect of following css declaration:

```css
.-translate-y-52 {
  --tw-translate-y: -13rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_translate_y_52 : Css.Style
neg_translate_y_52 =
    Css.property "--tw-translate-y" "-13rem"


{-| This class has the effect of following css declaration:

```css
.-translate-y-56 {
  --tw-translate-y: -14rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_translate_y_56 : Css.Style
neg_translate_y_56 =
    Css.property "--tw-translate-y" "-14rem"


{-| This class has the effect of following css declaration:

```css
.-translate-y-6 {
  --tw-translate-y: -1.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_translate_y_6 : Css.Style
neg_translate_y_6 =
    Css.property "--tw-translate-y" "-1.5rem"


{-| This class has the effect of following css declaration:

```css
.-translate-y-60 {
  --tw-translate-y: -15rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_translate_y_60 : Css.Style
neg_translate_y_60 =
    Css.property "--tw-translate-y" "-15rem"


{-| This class has the effect of following css declaration:

```css
.-translate-y-64 {
  --tw-translate-y: -16rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_translate_y_64 : Css.Style
neg_translate_y_64 =
    Css.property "--tw-translate-y" "-16rem"


{-| This class has the effect of following css declaration:

```css
.-translate-y-7 {
  --tw-translate-y: -1.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_translate_y_7 : Css.Style
neg_translate_y_7 =
    Css.property "--tw-translate-y" "-1.75rem"


{-| This class has the effect of following css declaration:

```css
.-translate-y-72 {
  --tw-translate-y: -18rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_translate_y_72 : Css.Style
neg_translate_y_72 =
    Css.property "--tw-translate-y" "-18rem"


{-| This class has the effect of following css declaration:

```css
.-translate-y-8 {
  --tw-translate-y: -2rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_translate_y_8 : Css.Style
neg_translate_y_8 =
    Css.property "--tw-translate-y" "-2rem"


{-| This class has the effect of following css declaration:

```css
.-translate-y-80 {
  --tw-translate-y: -20rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_translate_y_80 : Css.Style
neg_translate_y_80 =
    Css.property "--tw-translate-y" "-20rem"


{-| This class has the effect of following css declaration:

```css
.-translate-y-9 {
  --tw-translate-y: -2.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_translate_y_9 : Css.Style
neg_translate_y_9 =
    Css.property "--tw-translate-y" "-2.25rem"


{-| This class has the effect of following css declaration:

```css
.-translate-y-96 {
  --tw-translate-y: -24rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_translate_y_96 : Css.Style
neg_translate_y_96 =
    Css.property "--tw-translate-y" "-24rem"


{-| This class has the effect of following css declaration:

```css
.-translate-y-full {
  --tw-translate-y: -100%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_translate_y_full : Css.Style
neg_translate_y_full =
    Css.property "--tw-translate-y" "-100%"


{-| This class has the effect of following css declaration:

```css
.-translate-y-px {
  --tw-translate-y: -1px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_translate_y_px : Css.Style
neg_translate_y_px =
    Css.property "--tw-translate-y" "-1px"


{-| This class has the effect of following css declaration:

```css
.no-underline {
  text-decoration: none
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
no_underline : Css.Style
no_underline =
    Css.property "text-decoration" "none"


{-| This class has the effect of following css declaration:

```css
.normal-case {
  text-transform: none
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
normal_case : Css.Style
normal_case =
    Css.property "text-transform" "none"


{-| This class has the effect of following css declaration:

```css
.normal-nums {
  font-variant-numeric: normal
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
normal_nums : Css.Style
normal_nums =
    Css.property "font-variant-numeric" "normal"


{-| This class has the effect of following css declaration:

```css
.not-italic {
  font-style: normal
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
not_italic : Css.Style
not_italic =
    Css.property "font-style" "normal"


{-| This class has the effect of following css declaration:

```css
.not-sr-only {
  position: static;
  width: auto;
  height: auto;
  padding: 0;
  margin: 0;
  overflow: visible;
  clip: auto;
  white-space: normal
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
not_sr_only : Css.Style
not_sr_only =
    Css.batch
        [ Css.property "position" "static"
        , Css.property "width" "auto"
        , Css.property "height" "auto"
        , Css.property "padding" "0"
        , Css.property "margin" "0"
        , Css.property "overflow" "visible"
        , Css.property "clip" "auto"
        , Css.property "white-space" "normal"
        ]


{-| This class has the effect of following css declaration:

```css
.object-bottom {
  object-position: bottom
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
object_bottom : Css.Style
object_bottom =
    Css.property "object-position" "bottom"


{-| This class has the effect of following css declaration:

```css
.object-center {
  object-position: center
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
object_center : Css.Style
object_center =
    Css.property "object-position" "center"


{-| This class has the effect of following css declaration:

```css
.object-contain {
  object-fit: contain
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
object_contain : Css.Style
object_contain =
    Css.property "object-fit" "contain"


{-| This class has the effect of following css declaration:

```css
.object-cover {
  object-fit: cover
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
object_cover : Css.Style
object_cover =
    Css.property "object-fit" "cover"


{-| This class has the effect of following css declaration:

```css
.object-fill {
  object-fit: fill
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
object_fill : Css.Style
object_fill =
    Css.property "object-fit" "fill"


{-| This class has the effect of following css declaration:

```css
.object-left {
  object-position: left
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
object_left : Css.Style
object_left =
    Css.property "object-position" "left"


{-| This class has the effect of following css declaration:

```css
.object-left-bottom {
  object-position: left bottom
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
object_left_bottom : Css.Style
object_left_bottom =
    Css.property "object-position" "left bottom"


{-| This class has the effect of following css declaration:

```css
.object-left-top {
  object-position: left top
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
object_left_top : Css.Style
object_left_top =
    Css.property "object-position" "left top"


{-| This class has the effect of following css declaration:

```css
.object-none {
  object-fit: none
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
object_none : Css.Style
object_none =
    Css.property "object-fit" "none"


{-| This class has the effect of following css declaration:

```css
.object-right {
  object-position: right
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
object_right : Css.Style
object_right =
    Css.property "object-position" "right"


{-| This class has the effect of following css declaration:

```css
.object-right-bottom {
  object-position: right bottom
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
object_right_bottom : Css.Style
object_right_bottom =
    Css.property "object-position" "right bottom"


{-| This class has the effect of following css declaration:

```css
.object-right-top {
  object-position: right top
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
object_right_top : Css.Style
object_right_top =
    Css.property "object-position" "right top"


{-| This class has the effect of following css declaration:

```css
.object-scale-down {
  object-fit: scale-down
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
object_scale_down : Css.Style
object_scale_down =
    Css.property "object-fit" "scale-down"


{-| This class has the effect of following css declaration:

```css
.object-top {
  object-position: top
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
object_top : Css.Style
object_top =
    Css.property "object-position" "top"


{-| This class combines the effects of following css declarations:

```css
.ordinal, .slashed-zero, .lining-nums, .oldstyle-nums, .proportional-nums, .tabular-nums, .diagonal-fractions, .stacked-fractions {
  --tw-ordinal: var(--tw-empty,/*!*/ /*!*/);
  --tw-slashed-zero: var(--tw-empty,/*!*/ /*!*/);
  --tw-numeric-figure: var(--tw-empty,/*!*/ /*!*/);
  --tw-numeric-spacing: var(--tw-empty,/*!*/ /*!*/);
  --tw-numeric-fraction: var(--tw-empty,/*!*/ /*!*/);
  font-variant-numeric: var(--tw-ordinal) var(--tw-slashed-zero) var(--tw-numeric-figure) var(--tw-numeric-spacing) var(--tw-numeric-fraction)
}

.oldstyle-nums {
  --tw-numeric-figure: oldstyle-nums
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
oldstyle_nums : Css.Style
oldstyle_nums =
    Css.batch
        [ Css.property "--tw-ordinal" "var(--tw-empty,/*!*/ /*!*/)"
        , Css.property "--tw-slashed-zero" "var(--tw-empty,/*!*/ /*!*/)"
        , Css.property "--tw-numeric-figure" "var(--tw-empty,/*!*/ /*!*/)"
        , Css.property "--tw-numeric-spacing" "var(--tw-empty,/*!*/ /*!*/)"
        , Css.property "--tw-numeric-fraction" "var(--tw-empty,/*!*/ /*!*/)"
        , Css.property "font-variant-numeric" "var(--tw-ordinal) var(--tw-slashed-zero) var(--tw-numeric-figure) var(--tw-numeric-spacing) var(--tw-numeric-fraction)"
        , Css.property "--tw-numeric-figure" "oldstyle-nums"
        ]


{-| This class has the effect of following css declaration:

```css
.opacity-0 {
  opacity: 0
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
opacity_0 : Css.Style
opacity_0 =
    Css.property "opacity" "0"


{-| This class has the effect of following css declaration:

```css
.opacity-10 {
  opacity: 0.1
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
opacity_10 : Css.Style
opacity_10 =
    Css.property "opacity" "0.1"


{-| This class has the effect of following css declaration:

```css
.opacity-100 {
  opacity: 1
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
opacity_100 : Css.Style
opacity_100 =
    Css.property "opacity" "1"


{-| This class has the effect of following css declaration:

```css
.opacity-20 {
  opacity: 0.2
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
opacity_20 : Css.Style
opacity_20 =
    Css.property "opacity" "0.2"


{-| This class has the effect of following css declaration:

```css
.opacity-25 {
  opacity: 0.25
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
opacity_25 : Css.Style
opacity_25 =
    Css.property "opacity" "0.25"


{-| This class has the effect of following css declaration:

```css
.opacity-30 {
  opacity: 0.3
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
opacity_30 : Css.Style
opacity_30 =
    Css.property "opacity" "0.3"


{-| This class has the effect of following css declaration:

```css
.opacity-40 {
  opacity: 0.4
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
opacity_40 : Css.Style
opacity_40 =
    Css.property "opacity" "0.4"


{-| This class has the effect of following css declaration:

```css
.opacity-5 {
  opacity: 0.05
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
opacity_5 : Css.Style
opacity_5 =
    Css.property "opacity" "0.05"


{-| This class has the effect of following css declaration:

```css
.opacity-50 {
  opacity: 0.5
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
opacity_50 : Css.Style
opacity_50 =
    Css.property "opacity" "0.5"


{-| This class has the effect of following css declaration:

```css
.opacity-60 {
  opacity: 0.6
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
opacity_60 : Css.Style
opacity_60 =
    Css.property "opacity" "0.6"


{-| This class has the effect of following css declaration:

```css
.opacity-70 {
  opacity: 0.7
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
opacity_70 : Css.Style
opacity_70 =
    Css.property "opacity" "0.7"


{-| This class has the effect of following css declaration:

```css
.opacity-75 {
  opacity: 0.75
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
opacity_75 : Css.Style
opacity_75 =
    Css.property "opacity" "0.75"


{-| This class has the effect of following css declaration:

```css
.opacity-80 {
  opacity: 0.8
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
opacity_80 : Css.Style
opacity_80 =
    Css.property "opacity" "0.8"


{-| This class has the effect of following css declaration:

```css
.opacity-90 {
  opacity: 0.9
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
opacity_90 : Css.Style
opacity_90 =
    Css.property "opacity" "0.9"


{-| This class has the effect of following css declaration:

```css
.opacity-95 {
  opacity: 0.95
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
opacity_95 : Css.Style
opacity_95 =
    Css.property "opacity" "0.95"


{-| This class has the effect of following css declaration:

```css
.order-1 {
  order: 1
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
order_1 : Css.Style
order_1 =
    Css.property "order" "1"


{-| This class has the effect of following css declaration:

```css
.order-10 {
  order: 10
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
order_10 : Css.Style
order_10 =
    Css.property "order" "10"


{-| This class has the effect of following css declaration:

```css
.order-11 {
  order: 11
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
order_11 : Css.Style
order_11 =
    Css.property "order" "11"


{-| This class has the effect of following css declaration:

```css
.order-12 {
  order: 12
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
order_12 : Css.Style
order_12 =
    Css.property "order" "12"


{-| This class has the effect of following css declaration:

```css
.order-2 {
  order: 2
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
order_2 : Css.Style
order_2 =
    Css.property "order" "2"


{-| This class has the effect of following css declaration:

```css
.order-3 {
  order: 3
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
order_3 : Css.Style
order_3 =
    Css.property "order" "3"


{-| This class has the effect of following css declaration:

```css
.order-4 {
  order: 4
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
order_4 : Css.Style
order_4 =
    Css.property "order" "4"


{-| This class has the effect of following css declaration:

```css
.order-5 {
  order: 5
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
order_5 : Css.Style
order_5 =
    Css.property "order" "5"


{-| This class has the effect of following css declaration:

```css
.order-6 {
  order: 6
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
order_6 : Css.Style
order_6 =
    Css.property "order" "6"


{-| This class has the effect of following css declaration:

```css
.order-7 {
  order: 7
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
order_7 : Css.Style
order_7 =
    Css.property "order" "7"


{-| This class has the effect of following css declaration:

```css
.order-8 {
  order: 8
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
order_8 : Css.Style
order_8 =
    Css.property "order" "8"


{-| This class has the effect of following css declaration:

```css
.order-9 {
  order: 9
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
order_9 : Css.Style
order_9 =
    Css.property "order" "9"


{-| This class has the effect of following css declaration:

```css
.order-first {
  order: -9999
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
order_first : Css.Style
order_first =
    Css.property "order" "-9999"


{-| This class has the effect of following css declaration:

```css
.order-last {
  order: 9999
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
order_last : Css.Style
order_last =
    Css.property "order" "9999"


{-| This class has the effect of following css declaration:

```css
.order-none {
  order: 0
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
order_none : Css.Style
order_none =
    Css.property "order" "0"


{-| This class combines the effects of following css declarations:

```css
.ordinal, .slashed-zero, .lining-nums, .oldstyle-nums, .proportional-nums, .tabular-nums, .diagonal-fractions, .stacked-fractions {
  --tw-ordinal: var(--tw-empty,/*!*/ /*!*/);
  --tw-slashed-zero: var(--tw-empty,/*!*/ /*!*/);
  --tw-numeric-figure: var(--tw-empty,/*!*/ /*!*/);
  --tw-numeric-spacing: var(--tw-empty,/*!*/ /*!*/);
  --tw-numeric-fraction: var(--tw-empty,/*!*/ /*!*/);
  font-variant-numeric: var(--tw-ordinal) var(--tw-slashed-zero) var(--tw-numeric-figure) var(--tw-numeric-spacing) var(--tw-numeric-fraction)
}

.ordinal {
  --tw-ordinal: ordinal
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
ordinal : Css.Style
ordinal =
    Css.batch
        [ Css.property "--tw-ordinal" "var(--tw-empty,/*!*/ /*!*/)"
        , Css.property "--tw-slashed-zero" "var(--tw-empty,/*!*/ /*!*/)"
        , Css.property "--tw-numeric-figure" "var(--tw-empty,/*!*/ /*!*/)"
        , Css.property "--tw-numeric-spacing" "var(--tw-empty,/*!*/ /*!*/)"
        , Css.property "--tw-numeric-fraction" "var(--tw-empty,/*!*/ /*!*/)"
        , Css.property "font-variant-numeric" "var(--tw-ordinal) var(--tw-slashed-zero) var(--tw-numeric-figure) var(--tw-numeric-spacing) var(--tw-numeric-fraction)"
        , Css.property "--tw-ordinal" "ordinal"
        ]


{-| This class has the effect of following css declaration:

```css
.origin-bottom {
  transform-origin: bottom
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
origin_bottom : Css.Style
origin_bottom =
    Css.property "transform-origin" "bottom"


{-| This class has the effect of following css declaration:

```css
.origin-bottom-left {
  transform-origin: bottom left
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
origin_bottom_left : Css.Style
origin_bottom_left =
    Css.property "transform-origin" "bottom left"


{-| This class has the effect of following css declaration:

```css
.origin-bottom-right {
  transform-origin: bottom right
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
origin_bottom_right : Css.Style
origin_bottom_right =
    Css.property "transform-origin" "bottom right"


{-| This class has the effect of following css declaration:

```css
.origin-center {
  transform-origin: center
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
origin_center : Css.Style
origin_center =
    Css.property "transform-origin" "center"


{-| This class has the effect of following css declaration:

```css
.origin-left {
  transform-origin: left
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
origin_left : Css.Style
origin_left =
    Css.property "transform-origin" "left"


{-| This class has the effect of following css declaration:

```css
.origin-right {
  transform-origin: right
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
origin_right : Css.Style
origin_right =
    Css.property "transform-origin" "right"


{-| This class has the effect of following css declaration:

```css
.origin-top {
  transform-origin: top
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
origin_top : Css.Style
origin_top =
    Css.property "transform-origin" "top"


{-| This class has the effect of following css declaration:

```css
.origin-top-left {
  transform-origin: top left
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
origin_top_left : Css.Style
origin_top_left =
    Css.property "transform-origin" "top left"


{-| This class has the effect of following css declaration:

```css
.origin-top-right {
  transform-origin: top right
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
origin_top_right : Css.Style
origin_top_right =
    Css.property "transform-origin" "top right"


{-| This class has the effect of following css declaration:

```css
.outline-black {
  outline: 2px dotted black;
  outline-offset: 2px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
outline_black : Css.Style
outline_black =
    Css.batch
        [ Css.property "outline" "2px dotted black"
        , Css.property "outline-offset" "2px"
        ]


{-| This class has the effect of following css declaration:

```css
.outline-none {
  outline: 2px solid transparent;
  outline-offset: 2px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
outline_none : Css.Style
outline_none =
        ]