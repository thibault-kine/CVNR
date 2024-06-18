#region MOVE CAMERA

halfView_W = camera_get_view_width(view_camera[0]) / 2;
halfView_H = camera_get_view_height(view_camera[0]) / 2;

camera_set_view_pos(view_camera[0], x - halfView_W, y - halfView_H);

#endregion