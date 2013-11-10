## Specs

- Max 40 mins, recommended 30-35 mins

### Proposed Outline

- 為什麼要學統計？
- 從資料中能看出什麼？
- 如何在資料間比較？如何作假設檢定？
- 線性迴歸簡介
- 貝氏統計簡介

## Outline

- 統計與 R (人生)？
    - 不精準的科學 -> 不精準的情況時、實用的科學
    - 統計 Everywhere
        - 舉例
    - 統計與機率、機率與統計
        - 讀書 -> 建議修一下
        - 有空讀一下
    - 參考資料：
        - [黃文璋. (2011) 統計裡的估計, *數學傳播* 35卷2期](http://w3.math.sinica.edu.tw/media/pdf.jsp?m_file=ZDMxMi8zMTIwMQ==)
- Vectorize in R
    - *playing with `data.frame`*
    - basic `mean`, `var`
    - *`for` or `*apply`*
    - `cut`
- Probability Funcition in R
    - `dxxxx`: PDF for dist. xxxx
    - `pxxxx`: CDF
    - `qxxxx`: inverse CDP (quantile function)
    - `rxxxx`: random number generator
    - `diff(pxxxx(c(a, b)))` P(a< X <= b)
- Random Number Generating
    - `set.seed()`
    - `sample()`
- Numerical Computation
    - Monte Carlo simulation
    - Bootstrap
    - some examples
- Testing
    - `t.test`
    - `chi.test`
    - normal distribution test (?)
        - QQ-plot
        - `hist`
        - `ks.test`
- 線性迴歸簡介
    - `formula`
    - `lm()`
    - comparison w. STATA
        - `robust` in R?
- 可能講不到的貝氏統計初探
    - Basic Framework
    - Example
        - using Beta-Binomial

## TODO

- Choose a dataset
    - Sex Ratio of NTU B02 Newcomer of Each Discipline
    - `hist(iris$Sepal.Width)`
    - a dataset for linear regression
- 大專留學生國別、院校分布
    - 台灣的留學生，各國的比例是不是跟人口、距離反比相關？
    - regression surface
