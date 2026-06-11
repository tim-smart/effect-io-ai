Package: `effect`<br />
Module: `Crypto`<br />

## Crypto.DigestAlgorithm

Digest algorithms supported by the platform `Crypto` service.

**Gotchas**

SHA-1 is included for interoperability with existing protocols. Do not use
SHA-1 for new security-sensitive designs.

**Example** (Using a digest algorithm)

```ts
import { Crypto } from "effect"

const algorithm: Crypto.DigestAlgorithm = "SHA-256"
```

**Signature**

```ts
type DigestAlgorithm = "SHA-1" | "SHA-256" | "SHA-384" | "SHA-512"
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Crypto.ts#L37)

Since v4.0.0