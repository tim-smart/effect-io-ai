Package: `effect`<br />
Module: `RequestResolver`<br />

## RequestResolver.withSpan

Add a tracing span to the request resolver, which will also add any span
links from the request's.

**Example**

```ts
import { Effect, Exit, Request, RequestResolver } from "effect"

interface GetDataRequest extends Request.Request<string> {
  readonly _tag: "GetDataRequest"
  readonly id: number
}
const GetDataRequest = Request.tagged<GetDataRequest>("GetDataRequest")

const resolver = RequestResolver.make<GetDataRequest>((entries) =>
  Effect.sync(() => {
    for (const entry of entries) {
      entry.completeUnsafe(Exit.succeed(`data-${entry.request.id}`))
    }
  })
)

// Add tracing span with custom name and attributes
const tracedResolver = RequestResolver.withSpan(
  resolver,
  "user-data-resolver",
  {
    attributes: {
      "resolver.type": "user-data",
      "resolver.version": "1.0"
    }
  }
)

// Spans will automatically include batch size and request links
const effect = Effect.request(GetDataRequest({ id: 123 }), tracedResolver)
```

**Signature**

```ts
declare const withSpan: { <A extends Request.Any>(name: string, options?: Tracer.SpanOptions | ((entries: NonEmptyArray<Request.Entry<A>>) => Tracer.SpanOptions) | undefined): (self: RequestResolver<A>) => RequestResolver<A>; <A extends Request.Any>(self: RequestResolver<A>, name: string, options?: Tracer.SpanOptions | ((entries: NonEmptyArray<Request.Entry<A>>) => Tracer.SpanOptions) | undefined): RequestResolver<A>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/RequestResolver.ts#L850)

Since v4.0.0