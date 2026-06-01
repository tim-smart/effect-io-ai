Package: `effect`<br />
Module: `Channel`<br />

## Channel.withSpan

Runs the channel inside a tracing span with the specified name and options.

**Details**

The created span is provided as the current parent span while the channel
runs. The span is ended with the channel's exit value.

**Signature**

```ts
declare const withSpan: { (name: string, options?: SpanOptions): <OutElem, OutErr, OutDone, InElem, InErr, InDone, R>(self: Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, R>) => Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Exclude<R, ParentSpan>>; <OutElem, OutErr, OutDone, InElem, InErr, InDone, R>(self: Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, R>, name: string, options?: SpanOptions): Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Exclude<R, ParentSpan>>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Channel.ts#L7471)

Since v2.0.0