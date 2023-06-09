FxTanh : FxBase {

    *new { 
        var ret = super.newCopyArgs(nil, \none, (
            gain: 1.5
        ), nil, 1);
        ^ret;
    }

    *initClass {
        FxSetup.register(this.new);
    }

    subPath {
        ^"/fx_tanh";
    }  

    symbol {
        ^\fxTanh;
    }

    addSynthdefs {
        SynthDef(\fxTanh, {|inBus, outBus|
            var input = In.ar(inBus, 2);
            Out.ar(outBus, (\gain.kr(1) * input).tanh);
        }).add;
    }

}