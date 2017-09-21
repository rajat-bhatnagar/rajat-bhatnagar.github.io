---
title:  "Anti Pattern"
layout: post
permalink: /writing/2017/09/anti-pattern/
date:   2017-09-17 15:36:27
categories: [anti-pattern, coding]
format: quote
---
There are many many anti-patterns.

Check out the [AntiPatterns Catalog][antipatterns] for more info.

[antipatterns]:      https://web.archive.org/web/20161231130810/http://wiki.c2.com/?AntiPatternsCatalog

Anti Patterns are the things developers repeatedly do , that produce negative consequences.

They can stem out from various places. The following behavior should always be avoided
1. Haste : Producing low quality source code out of fear of delivery due to stringent and aggressive project deadlines
2. Apathy : Lack of concern about the problem or it's outcome
3. Ignorance : Producing code without clearly understanding the problem or solution space
4. Cargo Cult Programming : Doing something without understanding the reasoning behind it

## Illustration : Write a program to parse a String of Shoes
{% highlight java %}
import java.util.ArrayList;
import java.util.List;
import java.util.StringTokenizer;

/**
 * Illustrate the Anti-Pattern because of lack of knowledge of API
 * and the Correct way of doing it
 */
public class StringParser {
    private static final String input = "Sneakers, Sandals , Heels, Boots, Flats, Plum";
    private static final String delimiter = ",";

    public static void main(String[] args) {
        if(input.isEmpty() || delimiter.isEmpty()){
            return;
        }
        String[] chunks = getStringChunks(input, delimiter);
        System.out.println("######## Anti Pattern : ACCIDENTAL COMPLEXITY ########");
        for(String chunk : chunks){
            System.out.println(chunk);
        }

        /*
         * The above code works but is a anti pattern because it is verbose
         * and has a lot of accidental complexity
         *
         * This could have been done in a really simple way by using
         * the split method provided by the API
         * NOTE : We don't know what we don't know but take ime to learn the language
         */

        System.out.println("######## Correct way ##########");
        String[] correctWayToGetChunks = input.split(delimiter);
        for(String s : correctWayToGetChunks){
            System.out.println(s);
        }
    }

    private static String[] getStringChunks(String input, String delimiter) {
        List<String> chunksInInput = new ArrayList<>();
        StringTokenizer st = new StringTokenizer(input, delimiter);
            while (st.hasMoreTokens()){
                chunksInInput.add(st.nextToken());
            }
           String[] chunks = new String[chunksInInput.size()];
           chunksInInput.toArray(chunks);
        return chunks;
    }
}
{% endhighlight %}