Package: `effect`<br />
Module: `Effect`<br />

## Effect.mapInputContext

Provides part of the required context while leaving the rest unchanged.

**Details**

This function allows you to transform the context required by an effect,
providing part of the context and leaving the rest to be fulfilled later.

**Example**

```ts
import { Context, Effect } from "effect"

class Service1 extends Context.Tag("Service1")<Service1, { readonly port: number }>() {}
class Service2 extends Context.Tag("Service2")<Service2, { readonly connection: string }>() {}

const program = Effect.gen(function*() {
  const service1 = yield* Service1
  console.log(service1.port)
  const service2 = yield* Service2
  console.log(service2.connection)
  return "some result"
})

//      ┌─── Effect<string, never, Service2>
//      ▼
const programWithService1 = Effect.mapInputContext(
  program,
  (ctx: Context.Context<Service2>) => Context.add(ctx, Service1, { port: 3000 })
)

const runnable = programWithService1.pipe(
  Effect.provideService(Service2, { connection: "localhost" }),
  Effect.provideService(Service1, { port: 3001 })
)

Effect.runPromise(runnable)
// Output:
// 3000
// localhost
```

**Signature**

```ts
declare const mapInputContext: { <R2, R>(f: (context: Context.Context<R2>) => Context.Context<R>): <A, E>(self: Effect<A, E, R>) => Effect<A, E, R2>; <A, E, R, R2>(self: Effect<A, E, R>, f: (context: Context.Context<R2>) => Context.Context<R>): Effect<A, E, R2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L7489)

Since v2.0.0