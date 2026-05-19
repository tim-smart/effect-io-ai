Package: `effect`<br />
Module: `index`<br />

## index.Crypto

Re-exports all named exports from the "./Crypto.ts" module as `Crypto`.

**Example**

```ts
import { Console, Crypto, Effect, Layer } from "effect"

const TestCrypto = Layer.succeed(
  Crypto.Crypto,
  Crypto.make({
    randomBytes: (size) => new Uint8Array(size),
    digest: (_algorithm, data) => Effect.succeed(data)
  })
)

const program = Effect.gen(function*() {
  const crypto = yield* Crypto.Crypto
  const id = yield* crypto.randomUUIDv4
  yield* Console.log(`Created id: ${id}`)
})

Effect.runPromise(Effect.provide(program, TestCrypto))
```

**Example**

```ts
import { Crypto, Effect, Layer } from "effect"

const TestCrypto = Layer.succeed(
  Crypto.Crypto,
  Crypto.make({
    randomBytes: (size) => new Uint8Array(size),
    digest: (_algorithm, data) => Effect.succeed(data)
  })
)

const program = Effect.gen(function*() {
  const crypto = yield* Crypto.Crypto
  return yield* crypto.randomBytes(32)
})

Effect.runPromise(Effect.provide(program, TestCrypto))
```

**Signature**

```ts
export * as Crypto from "./Crypto.ts"
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/index.ts#L940)

Since v4.0.0