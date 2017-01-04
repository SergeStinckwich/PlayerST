/** position2d geom */
typedef struct player_position2d_geom
{
  /** Pose of the robot base, in the robot cs (m, rad). */
  player_pose3d_t pose;
  /** Dimensions of the base (m). */
  player_bbox3d_t size;
} player_position2d_geom_t;
