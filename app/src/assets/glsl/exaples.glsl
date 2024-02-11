float rand(vec2 co){
    return fract(sin(dot(co, vec2(12.9898, 78.233))) * 43758.5453);
}

void mainImage( out vec4 fragColor, in vec2 fragCoord )
{
    // Normalized pixel coordinates (from 0 to 1)
    vec2 uv = fragCoord.xy / iResolution.xy;

    // Set pixel color
    vec3 col = vec3(1.0, 1.0, 0.5);
    
    // Linear horizontal gradient
    // col *= uv.x;
    
    // Radial gradient
    vec2 radialMap = uv - vec2(0.5,0.5);
    // col *= length( radialMap );
    
    
    // FUNCTION: smoothstep
    /*
    col *= smoothstep( 
            .1,
            .4,
            length( radialMap ) );
    */ 
    
    
    // FUNCTION: smoothstep; FUNCTION: cos
    /*
    float amplitude = 0.1;
    float radius = 0.2;
    float frequency = 2.0;
    float flower = radius + amplitude * cos( iDate.w * 5.0 + atan(radialMap.y,radialMap.x) * frequency );
    col *= smoothstep( 
            flower,
            flower +.01,
            length( radialMap ) );
    */
       
    // Conditional Statement
    // col = (uv.x >= .4 && uv.x <= .6) ? vec3(.1,.5,.3) : col;
   
    
    // Invert colors - FUNCTION DEFINED UP
    // col = vec3(1.0,1.0,1.0) - col.xyz;
    
    // Random Noises
    // col = vec3(1.0) * rand(uv);
    
    // Output to screen
    fragColor = vec4(col,1.0);
}


// alt + enter -> compile