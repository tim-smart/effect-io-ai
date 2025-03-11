## mapErrorCause

A more powerful version of `mapError` which also surfaces the `Cause`
of the channel failure.

**Signature**

```ts
declare const mapErrorCause: { <OutErr, OutErr2>(f: (cause: Cause.Cause<OutErr>) => Cause.Cause<OutErr2>): <OutElem, InElem, InErr, OutDone, InDone, Env>(self: Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>) => Channel<OutElem, InElem, OutErr2, InErr, OutDone, InDone, Env>; <OutElem, InElem, OutErr, InErr, OutDone, InDone, Env, OutErr2>(self: Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>, f: (cause: Cause.Cause<OutErr>) => Cause.Cause<OutErr2>): Channel<OutElem, InElem, OutErr2, InErr, OutDone, InDone, Env>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Channel.ts#L1267)

Since v2.0.0