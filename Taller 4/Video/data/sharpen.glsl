#ifdef GL_ES
precision mediump float;
precision mediump int;
#endif

uniform sampler2D texture;
uniform vec2 texOffset;

varying vec4 vertColor;
varying vec4 vertTexCoord;

void main() {
  vec2 tc0 = vertTexCoord.xy + vec2(-texOffset.x, -texOffset.y);
  vec2 tc1 = vertTexCoord.xy + vec2(         0.0, -texOffset.y);
  vec2 tc2 = vertTexCoord.xy + vec2(+texOffset.x, -texOffset.y);
  vec2 tc3 = vertTexCoord.xy + vec2(-texOffset.x,          0.0);
  vec2 tc4 = vertTexCoord.xy + vec2(         0.0,          0.0);
  vec2 tc5 = vertTexCoord.xy + vec2(+texOffset.x,          0.0);
  vec2 tc6 = vertTexCoord.xy + vec2(-texOffset.x, +texOffset.y);
  vec2 tc7 = vertTexCoord.xy + vec2(         0.0, +texOffset.y);
  vec2 tc8 = vertTexCoord.xy + vec2(+texOffset.x, +texOffset.y);
  
  vec4 col0 = texture2D(texture, tc0);
  vec4 col1 = texture2D(texture, tc1);
  vec4 col2 = texture2D(texture, tc2);
  vec4 col3 = texture2D(texture, tc3);
  vec4 col4 = texture2D(texture, tc4);
  vec4 col5 = texture2D(texture, tc5);
  vec4 col6 = texture2D(texture, tc6);
  vec4 col7 = texture2D(texture, tc7);
  vec4 col8 = texture2D(texture, tc8);

vec4 sum = - (col0 + 2.0 * col3 + col6) + col2 + 2.0 * col5 + col8;
  
  gl_FragColor = vec4(sum.rgb, 1.0) * vertColor;
}
