Package: `effect`<br />
Module: `Channel`<br />

## Channel.catchTag

Recovers from tagged channel errors whose `_tag` matches one or more tags.

Matching tagged errors are handled by the recovery function. Non-matching
errors are handled by `orElse` when provided. Without `orElse`,
non-matching errors are re-failed.

**Signature**

```ts
declare const catchTag: { <OutErr, const K extends Types.Tags<OutErr> | Arr.NonEmptyReadonlyArray<Types.Tags<OutErr>>, OutElem1, OutErr1, OutDone1, InElem1, InErr1, InDone1, Env1, OutElem2 = never, OutErr2 = Exclude<OutErr, { readonly _tag: K extends readonly [string, ...string[]] ? K[number] : K; }>, OutDone2 = never, InElem2 = unknown, InErr2 = unknown, InDone2 = unknown, Env2 = never>(k: K, f: (e: Types.ExtractTag<NoInfer<OutErr>, K extends Arr.NonEmptyReadonlyArray<string> ? K[number] : K>) => Channel<OutElem1, OutErr1, OutDone1, InElem1, InErr1, InDone1, Env1>, orElse?: ((e: Types.ExcludeTag<NoInfer<OutErr>, K extends Arr.NonEmptyReadonlyArray<string> ? K[number] : K>) => Channel<OutElem2, OutErr2, OutDone2, InElem2, InErr2, InDone2, Env2>) | undefined): <OutElem, OutDone, InElem, InErr, InDone, Env>(self: Channel<OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>) => Channel<OutElem | OutElem1 | OutElem2, OutErr1 | OutErr2, OutDone | OutDone1 | OutDone2, InElem & InElem1 & InElem2, InErr & InErr1 & InErr2, InDone & InDone1 & InDone2, Env | Env1 | Env2>; <OutElem, OutErr, OutDone, InElem, InErr, InDone, Env, const K extends Types.Tags<OutErr> | Arr.NonEmptyReadonlyArray<Types.Tags<OutErr>>, OutElem1, OutErr1, OutDone1, InElem1, InErr1, InDone1, Env1, OutElem2 = never, OutErr2 = Exclude<OutErr, { readonly _tag: K extends readonly [string, ...string[]] ? K[number] : K; }>, OutDone2 = never, InElem2 = unknown, InErr2 = unknown, InDone2 = unknown, Env2 = never>(self: Channel<OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>, k: K, f: (e: Types.ExtractTag<NoInfer<OutErr>, K extends Arr.NonEmptyReadonlyArray<string> ? K[number] : K>) => Channel<OutElem1, OutErr1, OutDone1, InElem1, InErr1, InDone1, Env1>, orElse?: ((e: Types.ExcludeTag<NoInfer<OutErr>, K extends Arr.NonEmptyReadonlyArray<string> ? K[number] : K>) => Channel<OutElem2, OutErr2, OutDone2, InElem2, InErr2, InDone2, Env2>) | undefined): Channel<OutElem | OutElem1 | OutElem2, OutErr1 | OutErr2, OutDone | OutDone1 | OutDone2, InElem & InElem1 & InElem2, InErr & InErr1 & InErr2, InDone & InDone1 & InDone2, Env | Env1 | Env2>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Channel.ts#L4785)

Since v4.0.0