Package: `effect`<br />
Module: `Stream`<br />

## Stream.fromIterableEffect

Creates a stream from an effect producing an iterable of values.

**Example**

```ts
import { Console, Effect, ServiceMap, Stream } from "effect"

class UserRepo extends ServiceMap.Service<UserRepo, {
  readonly list: Effect.Effect<ReadonlyArray<string>>
}>()("UserRepo") {}

const listUsers = Effect.service(UserRepo).pipe(
  Effect.andThen((repo) => repo.list)
)

const stream = Stream.fromIterableEffect(listUsers)

const program = Effect.gen(function*() {
  const users = yield* stream.pipe(
    Stream.provideService(UserRepo, {
      list: Effect.succeed(["user1", "user2"])
    }),
    Stream.runCollect
  )
  yield* Console.log(users)
})

Effect.runPromise(program)
// Output: [ "user1", "user2" ]
```

**Signature**

```ts
declare const fromIterableEffect: <A, E, R>(iterable: Effect.Effect<Iterable<A>, E, R>) => Stream<A, E, R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L1043)

Since v2.0.0