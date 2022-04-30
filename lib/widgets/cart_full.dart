import 'package:flutter/material.dart';
import 'package:fluttericon/entypo_icons.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:provider/provider.dart';
import 'package:vulekappstore/consts/colors.dart';
import 'package:vulekappstore/provider/dark_theme_provider.dart';

class CartFull extends StatefulWidget {
  const CartFull({Key? key}) : super(key: key);

  @override
  _CartFullState createState() => _CartFullState();
}

class _CartFullState extends State<CartFull> {
  @override
  Widget build(BuildContext context) {
    final themeChange = Provider.of<DarkThemeProvider>(context);
    return Container(
      height: 135,
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          bottomRight: Radius.circular(16.0),
          topRight: Radius.circular(16.0),
        ),
        color: Theme.of(context).backgroundColor,
      ),
      child: Row(
        children: [
          Container(
            width: 130,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      'https://cdn-prd-02.pnp.co.za/sys-master/images/hb4/h77/10416601202718/silo-product-image-v2-01Sep2021-180237-6001019000252-front-1576197-1809_300Wx300H'),
                  fit: BoxFit.fill),
            ),
          ),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Flexible(
                        child: Text(
                          'title',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 15,
                          ),
                        ),
                      ),
                      Material(
                        color: Colors.transparent,
                        child: InkWell(
                          borderRadius: BorderRadius.circular(32),
                          //splashColor: Colors.transparent,
                          onTap: () {},
                          child: const SizedBox(
                            height: 50,
                            width: 50,
                            child: Icon(
                              FontAwesome5.times,
                              color: Colors.lime,
                              size: 22,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: const [
                      Text('Price'),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'R180',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Text('Sub Total'),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        'R320',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: themeChange.darkTheme
                                ? Colors.lime
                                : Theme.of(context).primaryColor),
                      ),
                    ],
                  ),
                  Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Free Shipping',
                        style: TextStyle(
                          color: themeChange.darkTheme
                              ? Colors.lime
                              : Theme.of(context).primaryColor,
                        ),
                      ),
                      const Spacer(),
                      Material(
                        color: Colors.transparent,
                        child: InkWell(
                          borderRadius: BorderRadius.circular(4.0),
                          //splashColor: Colors.transparent,
                          onTap: () {},
                          child: const Padding(
                            padding: EdgeInsets.all(5.0),
                            child: Icon(
                              Entypo.minus,
                              color: Colors.red,
                              size: 22,
                            ),
                          ),
                        ),
                      ),
                      Card(
                        elevation: 12,
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.10,
                          padding: const EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            gradient: LinearGradient(colors: [
                              ColorsConsts.gradientLStart,
                              ColorsConsts.gradientLEnd,
                            ], stops: const [
                              0.0,
                              0.7
                            ]),
                          ),
                          child: const Text(
                            '25',
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      Material(
                        color: Colors.transparent,
                        child: InkWell(
                          borderRadius: BorderRadius.circular(4.0),
                          //splashColor: Colors.transparent,
                          onTap: () {},
                          child: const Padding(
                            padding: EdgeInsets.all(5.0),
                            child: Icon(
                              Entypo.plus,
                              color: Colors.green,
                              size: 22,
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
