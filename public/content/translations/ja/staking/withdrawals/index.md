---
title: ステーキングの引き出し
description: ステーキングの引き出しとその仕組み、そしてステーカーが報酬を獲得するためにすべきことをまとめたページ
lang: ja
template: staking
image: /images/staking/leslie-withdrawal.png
alt: サイのレズリーとそのステーキング報酬
sidebarDepth: 2
summaryPoints:
  - 上海/カペラアップグレードによってイーサリアム上でのステーキング引き出しが可能になりました。
  - 引き出しを可能にするためにバリデーター運用者は、引き出しアドレスを設定する必要があります。
  - 報酬は数日ごとに自動的に分配されます。
  - ステーキングを完全に終了したバリデーターは残高を受け取ります。
---

<UpgradeStatus dateKey="page-staking-withdrawals-when">
2023年4月12日に発生した上海/カペラアップグレードによってステーキング引き出しが可能になりました。&nbsp;<a href="#when" customEventOptions={{ eventCategory: "Anchor link", eventAction: "When's it shipping?", eventName: "click" }}>上海/カペラの詳細</a>
</UpgradeStatus>

**ステーキング引き出し** は、イーサリアムのコンセンサスレイヤー(ビーコンチェーン) 上のバリデーターアカウントから取引可能な実行レイヤーへのETHの転送を意味します。

**32ETHを超過した残高は報酬**として自動的かつ定期的に、ユーザーによって事前に指定された、各バリデーターに紐づく引き出しアドレスに送られます。 ユーザーはまた、**ステーキングを完全に終了して**そのバリデータの全残高をアンロックすることができます。

## ステーキング報酬 {#staking-rewards}

報酬の支払いは、有効残高の上限である32ETHに達したアクティブなバリデータアカウントに対して自動的に処理されます。

報酬で獲得した32ETHを超える残高は、実際には元金に寄与せず、ネットワークにおけるこのバリデータの重みを増やすことはなく、数日ごとに報酬の支払いとして自動的に引き出されます。 引き出しアドレスを設定する以外には、これらの報酬のためにバリデータ運用者は何もする必要はありません。 引き出しはコンセンサスレイヤーで始まるため、ガス（取引手数料）はどの段階でも不要です。

### ここまでの道のり {#how-did-we-get-here}

過去数年間でイーサリアムはいくつかのネットワークアップグレードを経て、かつてのようなエネルギー集約的なマイニングからETH自体によって保護されるネットワークに移行しました。 イーサリアムのコンセンサスに参加することは、その能力のために参加者がETHを自発的にロックアップして「賭ける（ステークする）」ことから「ステーキング」として知られています。 ルールに従うユーザーは報酬を与えられる一方、不正を試みた場合は罰せられます。

2020年11月にステーキング預け入れコントラクトがローンチされて以降、勇敢なイーサリアム先駆者が自発的に資産をロックし、ネットワークのルールに従って正式にブロックの証明や提案を行う特別なアカウントである「バリデータ」を起動させました。

上海/カペラのアップグレード以前は、ステークされたETHを使用したり、それにアクセスしたりすることはできませんでした。 しかし現在は、指定されたアカウントに報酬を自動的に受け取れるようにオプトインすることができ、また、いつでもステークされたETHを引き出すことができます。

### 準備すること {#how-do-i-prepare}

<WithdrawalsTabComparison />

### ご確認ください {#important-notices}

引き出しアドレスの設定は、残高からETHを引き出させるようするために全てのバリデータアカウントに必要なステップです。

<InfoBanner emoji="⚠️" isWarning>
  <strong>各バリデータアカウントには一度に一つの引き出しアドレスしか割り当てることはできません。</strong>一度アドレスが選択され、コンセンサスレイヤーに提出されると、取り消しや再変更はできません。 提出前に、指定したアドレスの所有権があることと正しいかを再確認してください。
</InfoBanner>

ニーモニック/シードフレーズが安全なオフラインのままであり、いかなる方法でも侵害されていないと仮定すると、引き出しアドレスを指定しない間も<strong>資金に対する脅威はありません</strong>。 引き出し認証情報の追加に失敗すると、ETHは引き出しアドレスが指定されるまでの間、単にバリデーターアカウントにロックされたままになります。

## ステーキングを完全に終了する {#exiting-staking-entirely}

_いかなる_資金もバリデータアカウントの残高から移動できるようにするためには、引き出しアドレスを指定する必要があります。

ステーキングを完全に終了し、全残高を引き出そうとしているユーザーはまた、「自発的な終了」メッセージにバリデーター鍵で署名、ブロードキャストすることで、ステーキング終了のプロセスを開始しなければいけません。 この自発的な終了は、バリデータクライアントで行われ、コンセンサスノードに送信されます。また、ガスは必要ありません。

バリデーターがステーキングを終了するプロセスにかかる時間は、どれだけ他のバリデーターが同時に終了するかによって変動します。 プロセスが完了すると、このアカウントはもう検証ネットワークの義務を実行する責任を負うことはなく、 報酬を得る資格を失い、ETHが「賭けられて」は無くなります。 この時点で、アカウントは完全に「引き出し可能」としてマークされます。

アカウントが「引き出し可能」としてフラグされ、引き出し資格情報が設定されると、ユーザーは待機以外に何もする必要はありません。 ブロック提案者は自動的かつ継続的にアカウントを順番にスイープし、引き出し対象の資金を探します。 そして次の <a href="#validator-sweeping" customEventOptions={{ eventCategory: "Anchor link", eventAction: "Exiting staking entirely (sweep)", eventName: "click" }}>スイープ</a>の間に、アカウント残高は全額移動されます(「完全引き出し」と呼ばれます)。

## ステーキングの引き出しはいつ有効になりますか {#when}

ステーキングの引き出しは既に有効です！ 2023年4月12日に行われた上海/カペラのアップグレードの一部として、引き出し機能が有効になりました。

上海/カペラアップグレードによって、過去にステークされていたETHを一般的なイーサリアムアカウントに回収することが可能になりました。 これにより、流動性をステークするループが閉じられ、イーサリアムは持続可能でスケーラブルかつ安全な分散型エコシステムの構築に向けた旅に一歩近づきました。

- [イーサリアムの歴史についてより詳しく](/history/)
- [イーサリアムのロードマップについてより詳しく](/roadmap/)

## 引き出しはどのように機能しますか？ {#how-do-withdrawals-work}

特定のバリデータが引き出しの対象であるかどうかは、そのバリデターアカウントの状態によって決定されます。 アカウントが引き出しを開始するかどうかを決定するために、どの時点でもユーザーによる入力は必要ありません。プロセス全体はコンセンサス層での継続的なループによって自動的に行われます。

### 映像で学びたい場合 {#visual-learner}

Finematicsによるイーサリアムステーキングの引き出しについての説明をチェックして下さい。

<YouTube id="RwwU3P9n3uo" />

### バリデーターの「スイープ」 {#validator-sweeping}

バリデーターが次のブロックを提案する予定である場合、最大16件の適格な引き出しからなる引き出しキューを構築する必要があります。 これは、最初はバリデーターインデックス 0 から始まり、 プロトコルの規則に従ってこのアカウントが引き出し対象かどうかを判断し、対象である場合はキューに追加することで行われます。 次のブロックを提案するように設定されたバリデーターは、最後のブロックが中断したところから再開し、無限に順番に進めます。

<InfoBanner emoji="🕛">
アナログ時計について考えてみてください。 時計の針は時刻を指し、一方向に進み、どの時刻も跳ばすことはなく、最終的には最後の数字に達し、一周して再び先頭に戻ります。<br/><br/>
では、1から12ではなく0からN<em>(コンセンサスレイヤーに登録されたことのあるバリデータアカウントの総数は、2023年1月時点で500,000を超えています)</em><br/><br/>まである時計を考えて下さい。
時計の針は引き出し対象の確認を受ける必要がある次のバリデータを指し示します。 それは0から始まり、どのアカウントもスキップすることなく最後まで進みます。 最後のバリデーターに達すると、最初に戻ってサイクルは続きます。
</InfoBanner>

#### 引き出しのためのアカウントの確認 {#checking-an-account-for-withdrawals}

ブロック提案者がスイープしてバリデーターが引き出し可能かをチェックしている間、チェックされる各バリデータは短い一連の質問に対して評価され、引き出しが実行されるべきか、その場合はどれだけのETHが引き出されるべきか判断されます。

1. **引き出しアドレスは指定されているか？**もし引き出しアドレスが指定されていない場合はそのアカウントはスキップされ、引き出しは行われません。
2. **バリデーターは終了し、引き出し可能な状態か？**もしバリデーターが完全に終了し、そのアカウントが「withdrawable」とみなされるエポックに到達している場合は、完全引き出しが行われます。 これにより全ての残高が引き出しアドレスに移されます。
3. **有効残高は上限の32か？**もしアカウントが引き出し資格情報を持ち、完全引き出しではなく、引き出し前の報酬が32以上ある場合、32を超えた分の報酬のみがユーザーの引き出しアドレスに移される、部分引き出しが行われます。

バリデーターのライフサイクルの過程で、このフローに直接影響を与えるバリデーター運用者の行動は2つしかありません：

- 引き出し資格情報を指定し、全ての形式の引き出しを有効にする。
- ネットワークから撤退し、完全引き出しを実行する。

### ガス不要 {#gas-free}

ステーキング引き出しに対するこのアプローチでは、特定の量のETHの引き出しを要求するトランザクションをステーカーが手動で送信する必要がありません。 これはつまり、**ガス(トランザクション手数料) が不要**で、引き出しも既存の実行層のブロック領域と競合しないことを意味します。

### どれくらいの頻度でステーキング報酬を受け取れますか？ {#how-soon}

一つのブロックで処理が可能な引き出しの数は最大16です。 このレートでは、1日あたり115,200のバリデーターの引き出しを処理することができます(スロットの欠落がないと仮定)。 上記のように、引き出し対象でないバリデーターがスキップされると、スイープを完了するまでの時間が短縮されます。

この計算を拡張すると、任意の回数の引き出し処理にかかる時間を推定できます:

<TableContainer>

| 引き出しの数 | 完了までの時間 |
| :-------------------: | :--------------: |
|        400,000        |     3.5 日     |
|        500,000        |     4.3 日     |
|        600,000        |     5.2 日     |
|        700,000        |     6.1 日     |
|        800,000        |     7.0 日     |

</TableContainer>

このように、ネットワーク上のバリデーター数が増えると、完了にかかる時間は遅くなります。 スロットの欠落が増えればそれに比例して遅くなる可能性はありますが、これは一般的に起こりうる結果のの中では遅い方です。

## よくある質問 {#faq}

<ExpandableCard
title="引き出しアドレスを一度設定した場合、別の引き出しアドレスに変更できますか"
eventCategory="FAQ"
eventAction="Once I have provided a withdrawal address, can I change it to an alternative withdrawal address?"
eventName="read more">
できません。引き出し資格情報を設定するプロセスは一度だけのプロセスであり、一度送信すると変更はできません。
</ExpandableCard>

<ExpandableCard
title="なぜ引き出しアドレスは一度しか設定できないのですか"
eventCategory="FAQ"
eventAction="Why can a withdrawal address only be set once?"
eventName="read more">
実行層の引き出しアドレスを設定することで、そのバリデーターの引き出し資格情報は恒久的に変更されます。 これはつまり、古い認証情報は使えなくなり、新しい認証情報が実行層アカウントに直結します。

引き出しアドレスは、スマートコントラクト(コードによって制御される) もしくは外部所有アカウント(EOA、秘密鍵によって制御される) のどちらかです。 現時点で、これらのアカウントがバリデーター認証情報の変更をコンセンサスレイヤーに伝える方法はありません。また、この機能を追加するとプロトコルが不必要に複雑になります。

特定のバリデーターの引き出しアドレスを変更する代わりに、 ユーザーは、Safeのような鍵の交換が可能なスマートコントラクトを引き出しアドレスに設定することを選択することができます。 自分のEOAに資金を設定したユーザーは、完全引き出しを行ってステークした全ての資金を引き出し、 新しい認証情報を使って再度ステークすることができます。
</ExpandableCard>

<ExpandableCard
title="ステーキングトークンやステーキングプールに参加した場合"
eventCategory="FAQ"
eventAction="What if I participate in staking tokens or pooled staking"
eventName="read more">

もし <a href="/staking/pools/">ステーキングプール</a> に参加しているか、ステーキングトークンを保有している場合は、各サービスによって運用が異なるため、ステーキングの引き出し方法の詳細については、プロバイダーに確認する必要があります

一般的に、ユーザーは自由に元金であるステークされたETHを回収したり、利用するステーキングプロバイダーを変更したりできるはずです。 特定のプールが大きくなりすぎた場合は、撤退および償還し、<a href="https://rated.network/">より小さいプロバイダー</a>で再びステーキングできます。 それとも、もし十分なETHが貯まっているなら <a href="/staking/solo/">自宅のコンピューターでステーク</a>することもできます。

</ExpandableCard>

<ExpandableCard
title="報酬の支払い(部分引き出し) は自動的に発生しますか"
eventCategory="FAQ"
eventAction="Do reward payments (partial withdrawals) happen automatically?"
eventName="read more">
はい、バリデーターが引き出しアドレスを設定している限り、自動で支払われます。 これは、最初に引き出しを有効にするために一度だけ設定する必要があります。すると、報酬の支払いは各バリデーターのスイープによって数日ごとに自動的に発生します。
</ExpandableCard>

<ExpandableCard
title="全引き出しは自動的に発生しますか"
eventCategory="FAQ"
eventAction="Do full withdrawals happen automatically?"
eventName="read more">

いいえ、バリデーターがネットワーク上でまだアクティブである場合、完全引き出しは自動的には行われません。 これには自主的な終了を手動で行う必要があります。

バリデーターが終了プロセスを完了し、アカウントが引き出し認証情報に紐づいている場合、残高は次の<em></em><a href="#validator-sweeping">バリデータースイープ</a>の間に引き出されます。

</ExpandableCard>

<ExpandableCard title="任意の数量の引き出しは可能ですか"
eventCategory="FAQ"
eventAction="Can I withdraw a custom amount?"
eventName="read more">
引き出しは自動的にプッシュされ、ステークに関与していないETHを転送するよう設計されています。 これには、終了プロセスを完了したアカウントの全残高も含まれてます。

特定の量のETHの引き出しを手動でリクエストすることはできません。
</ExpandableCard>

<ExpandableCard
title="私はバリデータを運用します 引き出しの有効化に関するより詳細な情報はどこで確認できますか"
eventCategory="FAQ"
eventAction="I operate a validator. Where can I find more information on enabling withdrawals?"
eventName="read more">

バリデータのオペレータは、「<a href="https://launchpad.ethereum.org/withdrawals/">Staking Launchpad Withdrawals</a>」のページにアクセスすることをお勧めします。このページでは、引き出しのためにバリデータが準備することについて詳細、イベントのタイミング、引き出しの機能に関する詳細が記載されています。

最初にテストネットでのセットアップを試すには、<a href="https://goerli.launchpad.ethereum.org">Goerli Testnet Staking Launchpad</a>を見て始めましょう。

</ExpandableCard>

<ExpandableCard
title="撤退した後でも、ETHをデポジットすることで再びバリデーターを起動できますか"
eventCategory="FAQ"
eventAction="Can I re-activate my validator after exiting by depositing more ETH?"
eventName="read more">
できません。 一度バリデーターを終了し、残高がすべて引き出されると、そのバリデーターに入金された追加の資金は次のバリデータースイープで引き出しアドレスに自動的に移されます。 そのためETHを再びステークするには、新しいバリデーターを起動する必要があります。
</ExpandableCard>

## 参考文献 {#further-reading}

- [Staking Launchpad 「Withdrawals」](https://launchpad.ethereum.org/withdrawals)
- [EIP-4895: ビーコンチェーンプッシュ引き出しの実装](https://eips.ethereum.org/EIPS/eip-4895)
- [Ethereum Cat Herders - 上海](https://www.ethereumcatherders.com/shanghai_upgrade/index.html)
- [PEEPanEIP #94: Potuz & Hsiao-Wei WangによるステークしたETHの引き出し(テスト)](https://www.youtube.com/watch?v=G8UstwmGtyE)
- [PEEPanEIP#68: Alex Stokesによるビーコンチェーンプッシュ引き出しの実装の解説](https://www.youtube.com/watch?v=CcL9RJBljUs)
- [バリデーターの有効残高について理解する](https://www.attestant.io/posts/understanding-validator-effective-balance/)
