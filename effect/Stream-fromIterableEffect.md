## fromIterableEffect

Creates a stream from an effect producing a value of type `Iterable<A>`.

**Example**

```ts
import { Context, Effect, Stream } from "effect"

class Database extends Context.Tag("Database")<
  Database,
  { readonly getUsers: Effect.Effect<Array<string>> }
>() {}

const getUsers = Database.pipe(Effect.andThen((_) => _.getUsers))

const stream = Stream.fromIterableEffect(getUsers)

// Effect.runPromise(
//   Stream.runCollect(stream.pipe(Stream.provideService(Database, { getUsers: Effect.succeed(["user1", "user2"]) })))
// ).then(console.log)
// { _id: 'Chunk', values: [ 'user1', 'user2' ] }
```

**Signature**

```ts
declare const fromIterableEffect: <A, E, R>(effect: Effect.Effect<Iterable<A>, E, R>) => Stream<A, E, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L2112)

Since v2.0.0