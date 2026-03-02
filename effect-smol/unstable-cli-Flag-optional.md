Package: `effect`<br />
Module: `Flag`<br />

## Flag.optional

Makes a flag optional, returning an Option type that can be None if not provided.

**Example**

```ts
import { Effect, Option } from "effect"
import { Flag } from "effect/unstable/cli"

const optionalPort = Flag.optional(Flag.integer("port"))

const program = Effect.gen(function*() {
  const [leftover, port] = yield* optionalPort.parse({
    arguments: [],
    flags: { "port": ["4000"] }
  })
  if (Option.isSome(port)) {
    console.log("Port specified:", port.value)
  } else {
    console.log("No port specified, using default")
  }
})
```

**Signature**

```ts
declare const optional: <A>(param: Flag<A>) => Flag<Option.Option<A>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Flag.ts#L473)

Since v4.0.0