# Dice-Perl
A Perl noob's program about testing a probability conclusion quoted by a Japanese Manga.

本程序用来验证日本动漫《狂赌之渊》里引用的一个概率统计结论。

该动漫中有个掷骰子的游戏。

游戏规则如下 如果骰子结果为 1 2 3 则为 Down 记为 D 如果骰子结果为 4 5 6 则为 Up 记为 U

游戏者得说出 三次掷骰子后的结果 谁说出的结果先出现 则获胜

example

DDDUU 游戏者A ：DDU 游戏者B ：UUU 则游戏者A获胜

在玩游戏时，有位聪明的主角说道： DDU,DUU,UUD,UDD 这四种结果平均需8次掷骰子即可出现 UUU DDD 这两种结果平均需14次掷筛子才可出现

本程序将通过10000遍掷50次骰子来统计验证该结论的正确性。
