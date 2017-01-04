/** @brief A pose in space */
typedef struct player_pose3d
{
  /** X [m] */
  double px;
  /** Y [m] */
  double py;
  /** Z [m] */
  double pz;
  /** roll [rad] */
  double proll;
  /** pitch [rad] */
  double ppitch;
  /** yaw [rad] */
  double pyaw;
} player_pose3d_t;
