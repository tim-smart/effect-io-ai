Package: `effect`<br />
Module: `Stream`<br />

## Stream.catchTags

Switches to a recovery stream based on matching `_tag` handlers.

**Example**

```ts
import { Console, Effect, Stream } from "effect"

class NotFound {
  readonly _tag = "NotFound"
  constructor(readonly resource: string) {}
}

class Unauthorized {
  readonly _tag = "Unauthorized"
  constructor(readonly user: string) {}
}

const stream = Stream.fail(new NotFound("profile"))

const program = Effect.gen(function* () {
  const result = yield* stream.pipe(
    Stream.catchTags({
      NotFound: () => Stream.succeed("fallback"),
      Unauthorized: () => Stream.succeed("login")
    }),
    Stream.runCollect
  )
  yield* Console.log(result)
})

// Output: [ "fallback" ]
```

**Signature**

```ts
declare const catchTags: { <E, Cases extends (E extends { _tag: string; } ? { [K in E["_tag"]]+?: (error: Extract<E, { _tag: K; }>) => Stream<any, any, any>; } : {}), A2 = never, E2 = Exclude<E, { _tag: keyof Cases; }>, R2 = never>(cases: Cases, orElse?: ((e: Exclude<E, { _tag: keyof Cases; }>) => Stream<A2, E2, R2>) | undefined): <A, R>(self: Stream<A, E, R>) => Stream<A | A2 | { [K in keyof Cases]: Cases[K] extends ((...args: Array<any>) => Stream<infer A, any, any>) ? A : never; }[keyof Cases], E2 | { [K in keyof Cases]: Cases[K] extends ((...args: Array<any>) => Stream<any, infer E, any>) ? E : never; }[keyof Cases], R | R2 | { [K in keyof Cases]: Cases[K] extends ((...args: Array<any>) => Stream<any, any, infer R>) ? R : never; }[keyof Cases]>; <R, E, A, Cases extends (E extends { _tag: string; } ? { [K in E["_tag"]]+?: (error: Extract<E, { _tag: K; }>) => Stream<any, any, any>; } : {}), A2 = never, E2 = Exclude<E, { _tag: keyof Cases; }>, R2 = never>(self: Stream<A, E, R>, cases: Cases, orElse?: ((e: Exclude<E, { _tag: keyof Cases; }>) => Stream<A2, E2, R2>) | undefined): Stream<A | A2 | { [K in keyof Cases]: Cases[K] extends ((...args: Array<any>) => Stream<infer A, any, any>) ? A : never; }[keyof Cases], E2 | { [K in keyof Cases]: Cases[K] extends ((...args: Array<any>) => Stream<any, infer E, any>) ? E : never; }[keyof Cases], R | R2 | { [K in keyof Cases]: Cases[K] extends ((...args: Array<any>) => Stream<any, any, infer R>) ? R : never; }[keyof Cases]>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L5016)

Since v4.0.0