## mapInputError

Returns a new channel which is the same as this one but applies the given
function to the input channel's error value.

**Signature**

```ts
declare const mapInputError: { <InErr0, InErr>(f: (a: InErr0) => InErr): <OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>(self: Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>) => Channel<OutElem, InElem, OutErr, InErr0, OutDone, InDone, Env>; <OutElem, InElem, OutErr, InErr, OutDone, InDone, Env, InErr0>(self: Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>, f: (a: InErr0) => InErr): Channel<OutElem, InElem, OutErr, InErr0, OutDone, InDone, Env>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Channel.ts#L594)

Since v2.0.0