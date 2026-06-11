Package: `effect`<br />
Module: `Crypto`<br />

## Crypto.Crypto

Platform-agnostic cryptographic operations.

**Details**

`Crypto` implementations must use cryptographically secure platform APIs.
The random generator helpers are derived by the `make` constructor from
the random methods on this service.

**Example** (Using cryptographic operations)

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
  const bytes = yield* crypto.randomBytes(16)
  const uuidv4 = yield* crypto.randomUUIDv4
  const uuidv7 = yield* crypto.randomUUIDv7
  const hash = yield* crypto.digest("SHA-256", bytes)
  return { uuidv4, uuidv7, hash }
})

Effect.runPromise(Effect.provide(program, TestCrypto))
```

**Signature**

```ts
export interface Crypto {
  readonly [TypeId]: typeof TypeId

  /**
   * Generates a random integer in the range Number.MIN_SAFE_INTEGER to
   * Number.MAX_SAFE_INTEGER (both inclusive).
   */
  nextIntUnsafe(): number

  /**
   * Generates a random number in the range 0 (inclusive) to 1 (exclusive).
   */
  nextDoubleUnsafe(): number

  /**
   * Generates cryptographically secure random bytes.
   */
  randomBytes(size: number): Effect.Effect<Uint8Array, PlatformError.PlatformError>

  /**
   * Computes a cryptographic digest for the supplied data.
   */
  digest(
    algorithm: DigestAlgorithm,
    data: Uint8Array
  ): Effect.Effect<Uint8Array, PlatformError.PlatformError>

  /**
   * Generates a cryptographically secure random number between 0 (inclusive)
   * and 1 (exclusive).
   */
  readonly random: Effect.Effect<number>

  /**
   * Generates a cryptographically secure random boolean.
   */
  readonly randomBoolean: Effect.Effect<boolean>

  /**
   * Generates a cryptographically secure random integer between
   * `Number.MIN_SAFE_INTEGER` and `Number.MAX_SAFE_INTEGER` (both inclusive).
   */
  readonly randomInt: Effect.Effect<number>

  /**
   * Generates a cryptographically secure random number between `min`
   * (inclusive) and `max` (exclusive).
   */
  randomBetween(min: number, max: number): Effect.Effect<number>

  /**
   * Generates a cryptographically secure random integer between `min` and `max`.
   *
   * **Details**
   *
   * The lower bound is rounded up with `Math.ceil` and the upper bound is
   * rounded down with `Math.floor`. By default the range is inclusive; set
   * `options.halfOpen: true` to exclude the upper bound.
   */
  randomIntBetween(min: number, max: number, options?: {
    readonly halfOpen?: boolean | undefined
  }): Effect.Effect<number>

  /**
   * Uses the cryptographically secure random generator to shuffle the supplied
   * iterable.
   */
  randomShuffle<A>(elements: Iterable<A>): Effect.Effect<Array<A>>

  /**
   * Generates a cryptographically secure UUIDv4 string.
   */
  readonly randomUUIDv4: Effect.Effect<string, PlatformError.PlatformError>

  /**
   * Generates a cryptographically secure UUIDv7 string.
   */
  readonly randomUUIDv7: Effect.Effect<string, PlatformError.PlatformError>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Crypto.ts#L76)

Since v4.0.0