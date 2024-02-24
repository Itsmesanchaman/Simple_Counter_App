import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../provider/provider.dart';

class Homepage extends ConsumerWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context, ref) {

    final pm = ref.watch(app);

    return  Scaffold(
      appBar: AppBar(title: const Text('Simple Counter app', style: TextStyle(
        fontWeight: FontWeight.bold, color: Colors.black
      ),),
      centerTitle: true,
        backgroundColor: Colors.grey,
      ),
      backgroundColor: Colors.white70,
      body: Center(
        child: Container(
          height: 300,
          width: 300,
          color: Colors.black12,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(pm.toString(), style: const TextStyle(
                  fontSize: 30, fontWeight: FontWeight.bold
              ),
              ),

                Text(pm % 2 == 0?'Even' : 'odd',style: TextStyle(fontSize: 20),),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ElevatedButton(onPressed: (){
                    ref.read(app.notifier).state++;
                  },
                      child: const Text('Add')),
                  ElevatedButton(onPressed: (){
                    if(ref.watch(app) == 0){

                    }else{
                      ref.read(app.notifier).state--;
                    }
                  }, child: const Text('Minus'))

                ],
              )

            ],

          ),
        ),
      ),
        );



  }
}
