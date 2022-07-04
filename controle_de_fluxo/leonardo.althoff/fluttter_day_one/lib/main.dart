import 'package:flutter/material.dart';

void main() {
  runApp(
    //método que vai inflar nosso app (executar)
    MaterialApp(
      // um Widget que já vem com bastante coisas de configuração pronta
      home:
          HomePage(), // Setando que a minha home (tela inicial) será a HomePage
      debugShowCheckedModeBanner: false,
    ),
  );
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String imagem =
      "https://media.istockphoto.com/photos/mountain-landscape-picture-id517188688?k=20&m=517188688&s=612x612&w=0&h=i38qBm2P-6V4vZVEaMy_TaTEaoCMkYhvLCysE7yJQ5Q=";
  String imagem1 =
      "data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAoHCBYVFRUSEhYSEhIYFRgSGRIRGBEYEhIRGBgZGRgVGBgcIS4lHB4rHxgYJjgmKy8xNTU1GiQ7QDs0Py40NTEBDAwMEA8QHBISHzQhJCw0NDQ0NDE0NDQ0NDQ0NDQ0NDQ0NDQ0MTQ0NDQ0NDQ0NDE0NDQ0NDQ0NDQ0NDQxNDQ0NP/AABEIANQA7gMBIgACEQEDEQH/xAAbAAACAwEBAQAAAAAAAAAAAAADBAIFBgABB//EAEIQAAIBAwEFAwkEBwcFAAAAAAECAAMEESEFEjFBUWFxgQYTFCIykaHB0UJSgrFDYnKSotLhByMzNFSywhUWRPDx/8QAGQEAAwEBAQAAAAAAAAAAAAAAAQIDBAAF/8QAJxEAAwACAgICAgICAwAAAAAAAAECAxESITFBBFETImGxcaEUMkL/2gAMAwEAAhEDEQA/APjM6cJ6BCceYnuIammdeQnVDkw6OBbs93YQLOCztHA92e7sKFkgkPE4DuSQpw4SERNdeEbiAXS3z3dYZaX2V9/WNCln2fHpLKzsxxMPEDZHZWzskaTe7DpBMTP2rhdBLyxcnEZSRujcW16Aoj9vd6ZmQWsRgRqpfbid85yTmzVpf9sheXEyVHaWRLMXO+mnETlBTmU+3a4ORPnu1NkhskazY7XB1MzVavgzqgpNbMfc7OKnhFTQmyfcfjK+52dzEXiOZvzM7zMsntiOMiKUPA4r/Mz0U4+1KQNODicKhJNRJlZ4RFcnE0aM06kTBhVaADRUiHSnpvceeOyBWEBPDlAhibNnTlOAniiTAjJHHgEmFkgskqxkgEVWTVIxSoExlLIngJpn410tpAdITVIzRoZhhQxxnF+kVw56Z2wybq98mtYsfpFFXMetqcHEDLGxTrNLYJjGeEprKnwl5QGBDoz0xunq3WLbXrahRH7FOJldepvPHmHTEXkjbNpLbZVfB3TwMXtLElZBAUaFz6Cn2M39NAX84CRunGDj1uR7phtoUtTPoF+u+gbswZj9pUeMXW0VnyZlyVOOENSup1xTgNyLxLIadVfvi9S03decIPV1Bklq9Z3EJWunWCZJZ1EBidRMQNHCbLBsIwywLiTpHAZ6DPGnmZJnCKwqwaQqiBBJKIRRPFEIolEgHqiHpJBqIzQT3dZbGlvsDLG2p6Q6tFw+mB75JWntT8iVKSRJolXXnFSkZZoPExZ2qraHk6nTllbU4G1oZIznHyl9aWXQHHb0kljbWxaolaJLNByk6NnjlCLTO9Fc6IN7HFcIh6mVgfXMPtJ8ALEqU0YZWgaNTsmpkYMT2pRCseIzqO2S2W+7qYvtO6LtgtooO6Dn3DEk4at6Al2O7LXzitSLBR7Yz94DEzO1KOCRNhsPZwAFSpqTwHQdsY2zsqmyk7u6TzEjySrRWfGz5JdJrrEXSaHa1mUYrx6GUzpKcS8sW3Z27GGUYGPa59IPdhc6GAEQbmMuOPLsi7iJSOFXEWcRtxAvT0ydJGkcJPBkwrwDGZ6OF0hkglhkECCFUQqiRUQiiWQCaDUZ4Rje6ePSAUQqiPIodDDKYBIwHOAp4Akgdpxn8hLzRx6DDUUzAqJe+T9sjs3nG3RuNjmTp0jz2wMLs23ziayxpqMaSitAATgYHLUHxyNDLm2eack9aRnpl0qKRwwYKlaDOTB0aksHYKhJmSpa6FlGcv6WWii0SI7XrZJhLcb3GVSqVsICmxHX+sAx9cZ6y1YndCfZBzwGcntiFxTwY0ts41FncDTOcY5d2kZuqm8h6iZyzusABvf0jy3fEHnIViW9hXRl/KAZI6zPPUwrLgHONSBkY6HlNBtUEsZQ16co3t9Fp8CRE8IhvNz1qJncWOKNAOsadYHOJOkMLMgGp93bE6zZjlY5OYnUEhSOEqkXcxmrE6hmejiKCHQQSCNUUzwgk5kkEKsgohVEohSSiFUSVGgzBmAyFGSegzicolEdsIp0xpxznn74RZBRCKI6AEQR+2UjB+8DjtGoPzilNCY3SIHD3ykvQrLuyqBeIDaEa50J598tKFSUFs0s6LzVF7XZGkXtq+ojW0qx3Qolbsw5YTUWGzBWJJOgk7qZfJ+gJNvRklTJO8SNDjAzluQ/rHrJOEttqbHFPPHswND1zFbKjrGeSbnaH0Ho0QGBcernEBtsKW3l4Hr1lpVttMyruqGsjjadbO0VSrDrCGlJIkensBXX9De1ilJAiuCgYsu6GOcr2ia+x2cr53jjmO+dc7MRR1MSckp6ZRMwNG19bXhmXG2LWgtFShy+NR4Ri+tVGSszV+54TT00mh1RU3EVeHqtF3MzUEBUilSN1IpUkaGEq0RePVohUmWghqSZ7usaBwMD3wZxy6a9IRFgkVk0EKokUWFVY6F2TUmSUTxRCosogbJokZp0SZK2oZIl7bWQHGXiOQlVorRauhwylTocEa6jT4GESiZoKdqDyMI2zOfKVcJE/wAhTUEMsaVMx2lYgR+jajhCnoDrYtaKUBMv9jbXNMYOoMWq2nqgCLejETv1tNMaU0y9q3vn2VeGTiWLbNVMETNPdMWDtjIAAwANBwlj/wBWZsBjwkrx2tcekWlfZalRiIXNIGSS6zGbZlOS2vRccfGR05GcplHVp9IoxwdZd3FoxJIGkUuLQ7uo1lppEq6HNkOJ202iKq9AgPpkZHdI39+rDJ+EXhutrtEnTXRU3T8Zk9pvqZbbUvuOJl7y4ySScza/1nQZoXdoFmkXeRc40PGZKZZUeOYrUhmaBqjBIPEaSNMdMSrRVqWecbrRKox6mZqGQ2iw9KmScAEnoOMiiwyacNIECiSLJqJyiEUSiJNnqiGpLJVbfd3cMrbwzhdd3sPbCooGBzjoR0WuzafOXFFZWbNPKXNFJtxvozXXZpPJ/Zq1PaIGnOO1rMKSBwlZsu9dFKD2Tx66SzSrkZMk1XJsCfX8lbWpYMlaJlgIatrDWNPXMs3qSkSXtDZu8ATiLX1gFzHKNZgAMzqmWBPHTMxKqVG2ZWjMVqMCBiW1ejk4Agb21VAoAYNj1t7hnsmtZPCKqRRHM02x6alck+t8JmCsatrtk4SeWOS6FfRortwuszW1do6YWGudoZXWZm+rZMODF9kMj2Sr7SZjlmLY0HdICrvkKSBkjXTn2yvbs49Os4qRjB9bprkazVpJmaj3yp2eKJAVlfKhsg5xnlMhVE0dxSZ+OTEqthgZOgPA44444jLG6RP8inyULiBYy1r2vSV9wpySdT1Mz5cTkpOVMWZoJjJPBEzFTNM0DqROosdaDZJnqissYUQqiREmsKFomsMiE8ILGI5Y+0BKIjT0Ep0D9kE9s9FIjjNzsy2poi5VWJGSTEdtWKkg0xqfsjr2TR+PS2Y18jlXHRU2iMEFT7BbdzkZ3gM8JodlbQ3M6I2Rj1hnAPTtmWCFcZ0yN4d2SM/Ax63qRpr0O1s1lvWXjHPSpmKNcy2o29Uje83U3eu4+PylU59jTJoNk0kctvtjA07Y7bUgCQNRnj1Ez9k+uvGaa1xiSy7T8lo7ehhRJMumfhPFEnM+zUhSkAGBOgzqYK9Y1Gx4CPLSBIzoOshXoBW9XWMqW9jciuu9lsi73GJ1aW7geqTjOVOePAeEubuuzLunhAUtmFlzvAZ+AjzelumJTKC4QthVBZjwVRkk90Yt/JfTfunFNBqVBXIH6znQfGW1zeU7YFUXfq4ycccDUljyHYJitr7SqVjmoxIHBBoi9w+fGWh3f/XpffslTS/kevb2ypki3oisw+3ULmnnuJ1+ESbaD1SSx3cnOEARTnqBx8ZTMdY7ZNrLzCX8v+TNkb0OV6AVc9ZQ3RJIUZPIDU8egmmvTlB3TLX4IPMTXhe0YX2yuqNFa9IkZ5Swt6eSCfdLja+y0WgrhgSeWkGWE57EeZRSl+zC3LDOgxjj2nPGKjj07ekYuBrFjPFyLTPVh9HMNevb1ngEkAMHjnIx0xzz8J2Jks0Syc9V5FjI70dHMsru/wB8IN1V3VC+qMZ7T1MhbVcHMQDQiPHTJuVrRsLPa/qgHlCXF0zqag3d1CNCdcnhgZyeEpayU1po1Nyah9pcaL015yFsrOwVQSx0A0+ctzfgyfiW9o0VzdekuuDTpYVFL1HpojkKAXbgc5ydM6H36TYfkzbNq9wtcjitFgEXsLcT8IpsbyOAAe4JY8fNoSF8W4nwx4zXpSREFOmqoo+yoAEnV/RojFryM2VnRp/4SU07QAW/eOplmlSZavFvS6y+w1T/AHD3HMXWyy6NpUtkf20Vu0gZ9/GCOzwvsEj9VtR4GZmh5TVE0qIGHZlG+nwl5Z+UNB23d/dOcf3g3Qe48INUvA36sYCEaEYhkpx44I5EfCJiuAdeHWdy2BpoIKc8anDKwIyNR1kK1QKCx4D/ANxBthFaiDnFbyuQu7T07fp9ZJrtQN+owUH2V4s3cOkrq+0A59Ubo7dTKSu+yV3rpFJc27EndDEnpnJzxi6eT7v7RWmO3VvcPrLt7pV4kCFsy1UkIM9vAS7zUl+vQkrfkrbfyXojWo1Sp2ZCr7hr8ZYDyetiNEKHqjvn4kiL7QumpEqzIhHUrn4xWlt5B7VZfBh8pPllb3sdqPY7ceTLbpFNww+64wf3h9BMVt3Y9elkvTcL98DeTH7QyBN1b+UNDnVT3mV+16FKuC1veG3qdBVcUn7Cu8Md49xmjD8jJD1Xj/BGsON9z/Z82XGHYuF3RkKc+uc8B+fhE7vaLMN3Jx0jG3bGtRc+eGcnSohDpU7VcfkcHslG7TVk+Q3OkTn463tg6hzBESbTmpkAEggHUE8COGk8y3s1TOiAkp5iTVM8Jmoqg1S2PADWC9EbpNLTtQY5Ts1npP4TMrzmO9DfpJpaP0m3SxSFXZyQP4jQr+QYunbN0Mv/ACZsHaqrgrTCa79QKQDyChiBvf8A2arYlhRVw1RQyjiDzlhci3R2ammMnQrjOPujPD3ydYnPkVZeT0hh6ox6zE9u9UOe31VxFK7oORP7/wDOIrWqsfZpsf2nb5NK6tb1W4W9M95Yn4mJMjvf0xmvXp81/icf84o91T/XH7NSoP8AmYvU2fXPC2p+G5FKmx7k8LYDu3I/S9g0yxW/x7NW5UdN5HHuKE/GePtBftVKf40akfFgTn92UFbYF0eFv/EkD/0O+X2aJH7NQD8niOkvBRS/s2lhtmsg/uXLp91GFSmfwr6w78CXlh5Vo+EqYpvwyTmmzdA3I9hny02F2CC1tvEfa3k3/B8lvjDm5uB/iULhhjHr/wB5p+1nf8N7HZFbTG3SPsNPaRpHe4rzXqOztgfKDbqkDcO8oUN+0zDQeAP5z57srbvq+bbfVeSVVYMp6KWAyJVbZ8oCuKVMZcZJPIZJx3nH5wriv2YU2+jWttUL61RyWPLix7AOnwiVz5UqNAcfqp6z+ONBMBUrVH9osc8d1XYnvwMe8yVK3b7lw3ZulR7tZzybYvBLs1FbykYn1VCn71Vhn3Z+cXfbtVhutXdVPFKe+F/hGvvlbb2r8reofD+ksaVGqOFu47yBHlp+xa2QSqh4+cf8DH/cY/bVkH2ag70H1kra1rn9CR3un1lvb2lxyoj95frKzp+yVdeiVntGmPtL3Oj/ACEuqF1Qcapbv27oU/ERVKlwqsnmF3WIOpBIx0OYW2unXOaFP1hune5g9uIax9bX9k+S2VvlXslKlFmoqUZfW3aeHRgOORxHhnuM+ctat0n1pkyP8NR3P8isztzsvdY5UqCdM8Md87DPPctllmUIwj2Tg4III5EHIhbSz3mAqEqnMgZIHYJs0tQoYDHrDdOQDp2dIE7PWWfxDv8AlIx72ZyccM8Z4aZGgHjNdU2cCCyg7o4kDQdJXVLUCI/g7GXyNhqZjdNogjRlHmt1sztFgjRhGiKPFtoPUYbtIDPVtR7ucSq0tiqdvQ5c7QHsLkjmRn3AwtC46Bh4MZSIL1iAaqrjTRToOg1nlW3veArA+DfzTDfOnto0SpnraNTSc9v7p+Zj1F+33lRMbS2HfOjVPSFXd+yV9Y92YvR2JfOf8f8AgX6SbxW/RRXP2j6NTAPF1X8dP5iG9Uf+Qg7C9L6TFW/kjfsP8zj8C/SeVvIzaH+qbw0/KH8QPyT9/wBmxqXSD9NTP4qfyMrq98nKovgyfQzLN5GX/O6q/vP9YtU8jLsatcVG/E/80R4qXhBVy/f9mlq3fMOW7MA/ksRuK7MNEB70f5SjPkPdN+mfHLLOdPfJL/ZxdN+lPjvfWD9p9HPg/wD0V3lBduB5sNunPrBN8HHIHJlPZuwOGJKnrn1T2TeWXkDfBd3zlFlQaJXRWAHRSdR7563kRe/YahTP3qdJQ3gxJI8Ilcm9jTUpaTRQ22nHHjLe1uFH2kH4sfKKv/Zhcg5NQZOuddc654wZ/s3uh+k/3fWMu/Qdz9mrt7ynnR6YGnFxnONeUcNzTP6Sn4P/AFmGP9n90P0p97fWSHkLeYx55sdMt9YdP6Z25+zf2jU2Pt0z+P8ArNBbUqYA1pkn9bUT5Ta+Ql5/qGXwJ+cf/wCyL8cLo/uiUUp+2hG0vr/Z9Je2Q8l8CIpVsV4iYVPJLaI4XbD8KwrbB2ko/wA4x/AvylFjfpkac/aLfayYGBn3mZwuVbI3u4kEGBuNmbQ53G93hv5oOpsi+RFfz6He+zhiw79Yyip1pMH6a7aLmhWVxpxHEcwZ64mcoWV0j+cZlOfaCgrvdp14zU2V8q02V0y5HE8p6OO6c9z2ZrlS/wBXsQeuwVlBIVuIHA46ypuG1j1d5V3D6xrriUhEUeHR4gHhUeYZotUlklSNI+OPGVi1Magx6xs3qqzoCwQbzY+yvWOq2TaS8jC1YZKkqxVxpDLWjbBotkrnhmWWzqkz9KpkgCWCM1Nt1wVPQzqe0Bo1tpdgEAy4esrDSYZLqWNvtLEjeDfaAqqS/rYEqLh9YOptHMWNXMOPG58jOt9LodpPHaVaU6vGErdY9QmKXaXMMK4lGlxCi5kHiGRbNWgXeIekT0VoFGhkNGcAIv52Te4BxgAaY7z1naHDK+ITz0Ra4GMY1znPZ0gWrwqNiutD1SvK+4uZIOpVizYYcB1la9TMtjhGeiNZsxGo0NVq8olUqTbCJtEKjROq8YuhunGVOQD6pyNeXfK2tUj1S0NMgq7yruH1jNxUlXXqazDmyGvHJ7vyQqRHzs887MKs0OSxFSNW+0HQEIxUMMEA8R0MpvPT3z8osmhHGy2WvCpXlKK8ItzGWQDgvqVzjUGONeM5yxJPU8Zm0uY7Tr6ZzHmxHBf0riNU7iZ6ncxulcy0snUl+laGWrKWncw4uZVImy3FaTFeU3pU99KnOTtl0LiTW4lILnnON7EcDbL70rOmnPoPj4TvS5n/AEyd6ZB+M7kaD0ueG7mf9MkfTJ34w8i/N1BtdSkN5ItdzuOhW9lw1zA1LjpKhrztgnu46aQvHZZPXiz1pXvdRd7qH8qQyxscq1ojWrRerdRKtcyF5y0YwletK6rUnlavEalaYsmTZpmNBC5kS5nTpJjnb5nb5nToTjzfM9DmdOnHB6TnMa84czp0pIlB6dQxum5nTptxmexunUMMKhnTprnwZmd5wzt8zp0YBHz7dZ7vmdOnHHb5nb5nTpxx2+Z4XM6dOZxE1DINUM9nSVDyBeoYB6p6zp0z0VkA1dusC1U9Z06Z7LSBeoYrUczp0z0XkDX9nPOV7uZ06Qoqj//Z";
  String imagemSelecionada =
      "https://media.istockphoto.com/photos/mountain-landscape-picture-id517188688?k=20&m=517188688&s=612x612&w=0&h=i38qBm2P-6V4vZVEaMy_TaTEaoCMkYhvLCysE7yJQ5Q=";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Este é o título da AppBar"),
      ),
      body: Center(
        child: Column(
          children: [
            const Text(
              "Esta é a imagem:",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(68, 138, 255, 1),
                fontSize: 20,
                fontStyle: FontStyle.italic,
              ),
            ),
            SizedBox(height: 10),
            Image.network(
              imagemSelecionada,
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                if (imagemSelecionada == imagem) {
                  imagemSelecionada = imagem1;
                } else {
                  imagemSelecionada = imagem;
                }
                setState(() {});
              },
              child: const Text('Trocar Imagem'),
            ),
          ],
        ),
      ),
    );
  }
}
