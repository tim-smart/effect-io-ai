Package: `effect`<br />
Module: `Param`<br />

## Param.choiceWithValue

Constructs command-line params that represent a choice between several
inputs. The input will be mapped to it's associated value during parsing.

**Example**

```ts
import * as Param from "effect/unstable/cli/Param"

// @internal - this module is not exported publicly

type Animal = Dog | Cat

interface Dog {
  readonly _tag: "Dog"
}

interface Cat {
  readonly _tag: "Cat"
}

const animal = Param.choiceWithValue(Param.flagKind, "animal", [
  ["dog", { _tag: "Dog" }],
  ["cat", { _tag: "Cat" }]
])
```

**Signature**

```ts
declare const choiceWithValue: <const Kind extends ParamKind, const Choices extends ReadonlyArray<readonly [string, any]>>(kind: Kind, name: string, choices: Choices) => Param<Kind, Choices[number][1]>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Param.ts#L473)

Since v4.0.0