Package: `effect`<br />
Module: `Stream`<br />

## Stream.updateService

Updates a single service in the stream environment by applying a function.

**Example**

```ts
import { Console, Effect, ServiceMap, Stream } from "effect"

class Counter extends ServiceMap.Service<Counter, { count: number }>()("Counter") {}

const stream = Stream.fromEffect(Effect.service(Counter)).pipe(
  Stream.updateService(Counter, (counter) => ({ count: counter.count + 1 }))
)

const program = Effect.gen(function*() {
  const counters = yield* Stream.runCollect(stream)
  yield* Console.log(`Updated count: ${counters[0].count}`)
})

Effect.runPromise(Effect.provideService(program, Counter, { count: 0 }))
// Output: Updated count: 1
```

**Signature**

```ts
declare const updateService: { <I, S>(key: ServiceMap.Key<I, S>, f: (service: NoInfer<S>) => S): <A, E, R>(self: Stream<A, E, R>) => Stream<A, E, R | I>; <A, E, R, I, S>(self: Stream<A, E, R>, key: ServiceMap.Key<I, S>, f: (service: NoInfer<S>) => S): Stream<A, E, R | I>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L9427)

Since v2.0.0