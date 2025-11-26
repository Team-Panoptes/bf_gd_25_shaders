Shader "Custom/StencilMask"
{
    Properties
    {
        [IntRange] _StencilValue("Stencil Value", Range(0, 255)) = 0
    }

    SubShader
    {
        Tags
        {
            "RenderType" = "Opaque"
            "RenderPipeline" = "UniversalPipeline"
        }

        Pass
        {

            Blend Zero One 
            ZWrite Off

            Stencil
            {
                Ref [_StencilValue]
                Comp Always
                Pass Replace
            }


        }
    }
}
