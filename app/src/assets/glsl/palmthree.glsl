void mainImage( out vec4 fragColor, in vec2 fragCoord )
{
    // Normalized pixel coordinates (from 0 to 1)
    vec2 uv = fragCoord.xy / iResolution.xy;
    
    // COLORS
    vec3 brownColor = vec3(0.439, 0.388, 0.125);
    vec3 greenColor = vec3(0.114, 0.859, 0.294);
    
    
    // Set pixel color
    vec3 col = greenColor;
    
    // Radial gradient
    vec2 origin = vec2(0.5,0.5);
    vec2 radialMap = uv - origin;
    
    // FUNCTION: smoothstep; FUNCTION: cos
    float amplitude = 0.1;
    float radius = 0.2;
    float frequency = 12.0;
    float flower = radius + amplitude * cos( iDate.w * 5.0 + atan(radialMap.y,radialMap.x) * frequency + 30.0 * uv.x);
    col *= smoothstep( 
            flower,
            flower -.01,
            length( radialMap ) );
       
    // Conditional Statement
    float width = .02;
    
    col = (uv.x >= origin.x - width && uv.x <= origin.x + width && uv.y <= .5)
        ? brownColor : col;
    
    col = (length(radialMap) < .02)
        ? brownColor : col;
   

    // Output to screen
    fragColor = vec4(col,1.0);
}