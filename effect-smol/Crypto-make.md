Package: `effect`<br />
Module: `Crypto`<br />

## Crypto.make

Creates a `Crypto` service from the primitive implementation, deriving the
random generator helpers and UUID generation from those primitives.

**When to use**

Use to build a Crypto service for a platform integration, test layer, or
custom runtime from primitive random-byte and digest operations.

**Details**

The constructor derives random numbers, booleans, integer ranges, shuffling,
and UUID generation from `impl.randomBytes`. Digest operations delegate to
`impl.digest`.

**Gotchas**

`impl.randomBytes` must return cryptographically secure bytes of the
requested length. UUID formatting mutates the byte array returned for UUID
generation, so the implementation should return a fresh array for each call.

**Example** (Creating a Crypto service)

```ts
import { Crypto, Effect, Layer } from "effect"

const TestCrypto = Layer.succeed(
  Crypto.Crypto,
  Crypto.make({
    randomBytes: (size) => new Uint8Array(size),
    digest: (_algorithm, data) => Effect.succeed(data)
  })
)
```

**Signature**

```ts
declare const make: (impl: { readonly randomBytes: (size: number) => Uint8Array; readonly digest: (algorithm: DigestAlgorithm, data: Uint8Array) => Effect.Effect<Uint8Array, PlatformError.PlatformError>; }) => Crypto
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Crypto.ts#L214)

Since v4.0.0