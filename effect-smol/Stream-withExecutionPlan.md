Package: `effect`<br />
Module: `Stream`<br />

## Stream.withExecutionPlan

Apply an `ExecutionPlan` to a stream, retrying with step-provided resources
until it succeeds or the plan is exhausted.

By default, a failing step can fallback even after emitting elements; set
`preventFallbackOnPartialStream` to fail instead of mixing partial output with
a later fallback.

**Example**

```ts
import { Console, Effect, ExecutionPlan, Layer, ServiceMap, Stream } from "effect"

class Service extends ServiceMap.Service<Service>()("Service", {
  make: Effect.succeed({
    stream: Stream.fail("A") as Stream.Stream<number, string>
  })
}) {
  static Bad = Layer.succeed(Service, Service.of({ stream: Stream.fail("A") }))
  static Good = Layer.succeed(Service, Service.of({ stream: Stream.make(1, 2, 3) }))
}

const plan = ExecutionPlan.make(
  { provide: Service.Bad },
  { provide: Service.Good }
)

const stream = Stream.unwrap(Effect.map(Service.asEffect(), (_) => _.stream))

const program = Effect.gen(function*() {
  const items = yield* stream.pipe(Stream.withExecutionPlan(plan), Stream.runCollect)
  yield* Console.log(items)
})

Effect.runPromise(program)
// Output: [ 1, 2, 3 ]
```

**Signature**

```ts
declare const withExecutionPlan: { <Input, R2, Provides, PolicyE>(policy: ExecutionPlan.ExecutionPlan<{ provides: Provides; input: Input; error: PolicyE; requirements: R2; }>, options?: { readonly preventFallbackOnPartialStream?: boolean | undefined; }): <A, E extends Input, R>(self: Stream<A, E, R>) => Stream<A, E | PolicyE, R2 | Exclude<R, Provides>>; <A, E extends Input, R, R2, Input, Provides, PolicyE>(self: Stream<A, E, R>, policy: ExecutionPlan.ExecutionPlan<{ provides: Provides; input: Input; error: PolicyE; requirements: R2; }>, options?: { readonly preventFallbackOnPartialStream?: boolean | undefined; }): Stream<A, E | PolicyE, R2 | Exclude<R, Provides>>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L5675)

Since v3.16.0