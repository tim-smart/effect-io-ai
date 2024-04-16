# withSpan

Wraps the channel with a new span for tracing.

To import and use `withSpan` from the "Channel" module:

```ts
import * as Channel from "effect/Channel"
// Can be accessed like this
Channel.withSpan
```

**Signature**

```ts
export declare const withSpan: {
  (
    name: string,
    options?:
      | {
          readonly attributes?: Record<string, unknown> | undefined
          readonly links?: ReadonlyArray<Tracer.SpanLink> | undefined
          readonly parent?: Tracer.AnySpan | undefined
          readonly root?: boolean | undefined
          readonly context?: Context.Context<never> | undefined
        }
      | undefined
  ): <OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>(
    self: Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>
  ) => Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Exclude<Env, Tracer.ParentSpan>>
  <OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>(
    self: Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>,
    name: string,
    options?:
      | {
          readonly attributes?: Record<string, unknown> | undefined
          readonly links?: ReadonlyArray<Tracer.SpanLink> | undefined
          readonly parent?: Tracer.AnySpan | undefined
          readonly root?: boolean | undefined
          readonly context?: Context.Context<never> | undefined
        }
      | undefined
  ): Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Exclude<Env, Tracer.ParentSpan>>
}
```
