Package: `effect`<br />
Module: `Stream`<br />

## Stream.catchReasons

Catches multiple reasons within a tagged error using an object of handlers.

**Example**

```ts
import { Console, Data, Effect, Stream } from "effect"

class RateLimitError extends Data.TaggedError("RateLimitError")<{
  retryAfter: number
}> {}

class QuotaExceededError extends Data.TaggedError("QuotaExceededError")<{
  limit: number
}> {}

class AiError extends Data.TaggedError("AiError")<{
  reason: RateLimitError | QuotaExceededError
}> {}

const stream = Stream.fail(
  new AiError({ reason: new RateLimitError({ retryAfter: 60 }) })
)

const program = Effect.gen(function*() {
  const values = yield* stream.pipe(
    Stream.catchReasons("AiError", {
      RateLimitError: (reason) => Stream.succeed(`retry: ${reason.retryAfter}`),
      QuotaExceededError: (reason) => Stream.succeed(`quota: ${reason.limit}`)
    }),
    Stream.runCollect
  )
  yield* Console.log(values)
})

Effect.runPromise(program)
// Output: [ "retry: 60" ]
```

**Signature**

```ts
declare const catchReasons: { <K extends Tags<E>, E, Cases extends { [RK in ReasonTags<ExtractTag<NoInfer<E>, K>>]+?: (reason: ExtractReason<ExtractTag<NoInfer<E>, K>, RK>, error: NarrowReason<ExtractTag<NoInfer<E>, K>, RK>) => Stream<any, any, any>; }, A2 = unassigned, E2 = never, R2 = never>(errorTag: K, cases: Cases, orElse?: ((reason: ExcludeReason<ExtractTag<NoInfer<E>, K>, Extract<keyof Cases, string>>, error: OmitReason<ExtractTag<NoInfer<E>, K>, Extract<keyof Cases, string>>) => Stream<A2, E2, R2>) | undefined): <A, R>(self: Stream<A, E, R>) => Stream<A | Exclude<A2, unassigned> | { [RK in keyof Cases]: Cases[RK] extends (...args: Array<any>) => Stream<infer A, any, any> ? A : never; }[keyof Cases], (A2 extends unassigned ? E : ExcludeTag<E, K>) | E2 | { [RK in keyof Cases]: Cases[RK] extends (...args: Array<any>) => Stream<any, infer E, any> ? E : never; }[keyof Cases], R | R2 | { [RK in keyof Cases]: Cases[RK] extends (...args: Array<any>) => Stream<any, any, infer R> ? R : never; }[keyof Cases]>; <A, E, R, K extends Tags<E>, Cases extends { [RK in ReasonTags<ExtractTag<E, K>>]+?: (reason: ExtractReason<ExtractTag<E, K>, RK>, error: NarrowReason<ExtractTag<E, K>, RK>) => Stream<any, any, any>; }, A2 = unassigned, E2 = never, R2 = never>(self: Stream<A, E, R>, errorTag: K, cases: Cases, orElse?: ((reason: ExcludeReason<ExtractTag<NoInfer<E>, K>, Extract<keyof Cases, string>>, error: OmitReason<ExtractTag<NoInfer<E>, K>, Extract<keyof Cases, string>>) => Stream<A2, E2, R2>) | undefined): Stream<A | Exclude<A2, unassigned> | { [RK in keyof Cases]: Cases[RK] extends (...args: Array<any>) => Stream<infer A, any, any> ? A : never; }[keyof Cases], (A2 extends unassigned ? E : ExcludeTag<E, K>) | E2 | { [RK in keyof Cases]: Cases[RK] extends (...args: Array<any>) => Stream<any, infer E, any> ? E : never; }[keyof Cases], R | R2 | { [RK in keyof Cases]: Cases[RK] extends (...args: Array<any>) => Stream<any, any, infer R> ? R : never; }[keyof Cases]>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L5257)

Since v4.0.0