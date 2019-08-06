==v2.8==
Starting with v2.8 .BLEND file comes in deflated form. (it can be recognized by reading the first two byte. which should come up as $1F and $8B. If that's the case, the file should be INFLATEd prior to reading.

All hail zlib! 
