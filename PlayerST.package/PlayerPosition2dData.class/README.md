/** position2d data */
typedef struct player_position2d_data
{
  /** position [m,m,rad] (x, y, yaw)*/
  player_pose2d_t pos;
  /** translational velocities [m/s,m/s,rad/s] (x, y, yaw)*/
  player_pose2d_t vel;
  /** Are the motors stalled? */
  uint8_t stall;
} player_position2d_data_t;
