#!/usr/bin/bash
a(){
        g=$(printf "%02d" $a)                                   h=$(printf "%02d" $b)
        i=$(printf "%02d" $c)
        j=$(printf "%02d" $d)
        k=$(printf "%05d" $e)
        l=$(printf "%08x" $e)
}
b(){
        wget -a 1.log -T 15 -O 202312$g"T"$h$i$j.vtt "http://81.211.33.66/hls-live3/streams/1tv-orbit-plus-4/1tv-orbit-plus-420-202312"$g"T"$h$i$j"-TFrag_"$k".vtt"
}
c(){
        let d=d+$1
        if(($d>=60));then
                let d=d-60
                let c=c+1
                if(($c>=60));then
                        let c=c-60
                        let b=b+1
                        if(($b>=24));then
                                let b=b-24
                                let a=a+1
                        fi
                fi
        fi
}
d(){
        let d=d-$1
        if(($d<0));then
                let d=d+60
                let c=c-1
                if(($c<0));then
                        let c=c+60
                        let b=b-1
                        if(($b<0));then
                                let b=b+24
                                let a=a-1
                        fi
                fi
        fi
}
a=${1#0}
b=${2#0}
c=${3#0}
d=${4#0}
m=00000000
for f in {1..4}
do
        e=${5#0}
done
while true
do
        a
        if(! b);then
                sleep 30
                if(! b);then
                        d 10
                        a
                        for o in {1..40}
                        do
                                if(b);then
                                        let e=e+1
                                        c 10
                                        a
                                        sleep 30
                                        if(b);then
                                                let e=e+1
                                                c 10
                                                break
                                        else
                                                d 10
                                                a
                                        fi
                                else
                                        c 1
                                        a
                                        if(($o==40));then
                                                exit
                                        fi
                                fi
                        done
                else
                        let e=e+1
                        c 10
                fi
        else
                let e=e+1
                c 10
        fi
done
