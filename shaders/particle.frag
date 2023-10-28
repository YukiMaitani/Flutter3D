#include <flutter/runtime_effect.glsl>

out vec4 fragColor;
uniform vec2 uSize;
uniform sampler2D image;

void main() {
    vec2 iResolution = uSize;
    vec2 fragCoord = FlutterFragCoord();
    vec2 uv = fragCoord/iResolution.xy;

    vec3 col = texture(image, uv).xyz;

    fragColor = vec4(col, 1.0);
}