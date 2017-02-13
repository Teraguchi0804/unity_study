Shader "Custom/testGLSL"
{
    Properties
    {
    }
    SubShader
    {
        Tags { "RenderType"="Opaque" }
        LOD 100

        Pass
        {
            CGPROGRAM
            #pragma vertex vert_img
            #pragma fragment frag
            
            #include "UnityCG.cginc"
            
            fixed4 frag (v2f_img i) : SV_Target
            {
            	

                fixed2 resolution = _ScreenParams;
                fixed2 p = (i.uv*resolution.xy * 2.0 - resolution.xy ) / resolution;
                float time = _Time;

//            	vec2 p = (gl_FragCoord.xy * 2.0 - resolution.xy) / resolution;

				float PI = 3.1415926;
				float PI2 = PI * 3.0;

//			    float x = (3.0 + PI) / PI2;

				float x = (atan2(p.y, p.x) + PI) / PI2;
			    
			    float s = sin(x * PI2 * 10.0);
			    
			    float sr = sin(x * PI * 10.0);
			    float sg = sin(x * PI / 20.0);
			    float sb = tan(x * PI + 15.0);
			    
			    float r = sin(length(p * 20.0) + sr - time * 16.0);
			    float g = sin(length(p * 15.0) + sg - time * 11.0);
			    float b = sin(length(p * 10.0) + sb - time * 8.0);
			 
			    
			    return fixed4( fixed3(r*s, g-s, b-s) * 3.0, 1.0 );

//                fixed2 resolution = _ScreenParams;
//                fixed2 position = (i.uv*resolution / resolution.xy );
//                float time = _Time * 30;
//                fixed color = 0.0;
//                color += sin( position.x * cos( time / 15.0 ) * 80.0 ) + cos( position.y * cos( time / 15.0 ) * 10.0 );
//                color += sin( position.y * sin( time / 10.0 ) * 40.0 ) + cos( position.x * sin( time / 25.0 ) * 40.0 );
//                color += sin( position.x * sin( time / 5.0 ) * 10.0 ) + sin( position.y * sin( time / 35.0 ) * 80.0 );
//                color *= sin( time / 10.0 ) * 0.5;
//                return fixed4(color, color * 0.5, sin(color + time / 3.0) * 0.75, 1.0);
            }
            ENDCG
        }
    }
}