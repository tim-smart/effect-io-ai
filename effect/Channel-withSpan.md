## withSpan

Wraps the channel with a new span for tracing.

**Signature**

```ts
declare const withSpan: { (name: string, options?: Tracer.SpanOptions | undefined): <OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>(self: Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>) => Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Exclude<Env, Tracer.ParentSpan>>; <OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>(self: Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>, name: string, options?: Tracer.SpanOptions | undefined): Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Exclude<Env, Tracer.ParentSpan>>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Channel.ts#L2179)

Since v2.0.0