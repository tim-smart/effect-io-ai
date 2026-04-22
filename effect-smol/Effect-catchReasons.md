Package: `effect`<br />
Module: `Effect`<br />

## Effect.catchReasons

Catches multiple reasons within a tagged error using an object of handlers.

**Example**

```ts
import { Data, Effect } from "effect"

class RateLimitError extends Data.TaggedError("RateLimitError")<{
  retryAfter: number
}> {}

class QuotaExceededError extends Data.TaggedError("QuotaExceededError")<{
  limit: number
}> {}

class AiError extends Data.TaggedError("AiError")<{
  reason: RateLimitError | QuotaExceededError
}> {}

declare const program: Effect.Effect<string, AiError>

const handled = program.pipe(
  Effect.catchReasons("AiError", {
    RateLimitError: (reason) =>
      Effect.succeed(`Retry after ${reason.retryAfter}s`),
    QuotaExceededError: (reason) =>
      Effect.succeed(`Quota exceeded: ${reason.limit}`)
  })
)
```

**Signature**

```ts
declare const catchReasons: { <K extends Tags<E>, E, Cases extends { [RK in ReasonTags<ExtractTag<NoInfer<E>, K>>]+?: (reason: ExtractReason<ExtractTag<NoInfer<E>, K>, RK>, error: NarrowReason<ExtractTag<NoInfer<E>, K>, RK>) => Effect<any, any, any>; }, A2 = unassigned, E2 = never, R2 = never>(errorTag: K, cases: Cases, orElse?: ((reason: ExcludeReason<ExtractTag<NoInfer<E>, K>, Extract<keyof Cases, string>>, error: OmitReason<ExtractTag<NoInfer<E>, K>, Extract<keyof Cases, string>>) => Effect<A2, E2, R2>) | undefined): <A, R>(self: Effect<A, E, R>) => Effect<A | Exclude<A2, unassigned> | { [RK in keyof Cases]: Cases[RK] extends (...args: Array<any>) => Effect<infer A, any, any> ? A : never; }[keyof Cases], (A2 extends unassigned ? E : ExcludeTag<E, K>) | E2 | { [RK in keyof Cases]: Cases[RK] extends (...args: Array<any>) => Effect<any, infer E, any> ? E : never; }[keyof Cases], R | R2 | { [RK in keyof Cases]: Cases[RK] extends (...args: Array<any>) => Effect<any, any, infer R> ? R : never; }[keyof Cases]>; <A, E, R, K extends Tags<E>, Cases extends { [RK in ReasonTags<ExtractTag<E, K>>]+?: (reason: ExtractReason<ExtractTag<E, K>, RK>, error: NarrowReason<ExtractTag<E, K>, RK>) => Effect<any, any, any>; }, A2 = unassigned, E2 = never, R2 = never>(self: Effect<A, E, R>, errorTag: K, cases: Cases, orElse?: ((reason: ExcludeReason<ExtractTag<NoInfer<E>, K>, Extract<keyof Cases, string>>, error: OmitReason<ExtractTag<NoInfer<E>, K>, Extract<keyof Cases, string>>) => Effect<A2, E2, R2>) | undefined): Effect<A | Exclude<A2, unassigned> | { [RK in keyof Cases]: Cases[RK] extends (...args: Array<any>) => Effect<infer A, any, any> ? A : never; }[keyof Cases], (A2 extends unassigned ? E : ExcludeTag<E, K>) | E2 | { [RK in keyof Cases]: Cases[RK] extends (...args: Array<any>) => Effect<any, infer E, any> ? E : never; }[keyof Cases], R | R2 | { [RK in keyof Cases]: Cases[RK] extends (...args: Array<any>) => Effect<any, any, infer R> ? R : never; }[keyof Cases]>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L3022)

Since v4.0.0