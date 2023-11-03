
years <- matrix(1997:2002,nrow=3,ncol=2)

result <- stopifnot(exists("years"),
                    is.matrix(years), ## matrix olup olmadığını kontrol etmek için
                    all(sapply(years,is.numeric)) ## sapply bütün years matrix'inin numeric olup olmadığını kontrol ediyor all ise hepsi true döndürürse true döndürüyor
                    ,dim(years) == c(3,2), ## boyutlarını kontrol ediyor dim
                    !anyNA(years), ## herhangi bir na varsa years içinde true döndürüyor ama başında ünlem olunca false oluyor stopifnot false görünce duruyor ama herhangi bir na yoksa false dönüyor ünlemle true oluyor ve test devam ediyor
                    range(years) == c(1997, 2002)) ## years matrix'inin içinin verilen vektör arasında olup olmadığını kontrol ediyor
