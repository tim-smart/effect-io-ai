Package: `effect`<br />
Module: `Exit`<br />

## Exit.asVoidAll

Combines multiple Exit values into a single `Exit<void, E>`.

- Use to validate that all exits in a collection succeeded
- If all exits are successful, returns a void success
- If any exit is a failure, returns a single failure with all error causes combined

Iterates over the entire collection. Collects all failure causes, not just
the first.

**Example** (Combining exits)

```ts
import { Exit } from "effect"

const exits = [Exit.succeed(1), Exit.succeed(2), Exit.succeed(3)]
console.log(Exit.isSuccess(Exit.asVoidAll(exits))) // true

const mixed = [Exit.succeed(1), Exit.fail("err"), Exit.succeed(3)]
console.log(Exit.isFailure(Exit.asVoidAll(mixed))) // true
```

**See**

- `asVoid` to discard the value of a single Exit

**Signature**

```ts
declare const asVoidAll: <I extends Iterable<Exit<any, any>>>(exits: I) => Exit<void, I extends Iterable<Exit<infer _A, infer _E>> ? _E : never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Exit.ts#L867)

Since v4.0.0