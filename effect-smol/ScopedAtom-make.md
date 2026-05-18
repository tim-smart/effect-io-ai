Package: `@effect/atom-react`<br />
Module: `ScopedAtom`<br />

## ScopedAtom.make

Creates a ScopedAtom from a factory function.

**Example** (Creating a scoped atom with input)

```ts
import * as Atom from "effect/unstable/reactivity/Atom"
import * as React from "react"
import * as ScopedAtom from "@effect/atom-react/ScopedAtom"
import { useAtomValue } from "@effect/atom-react"

const User = ScopedAtom.make((name: string) => Atom.make(name))

function UserName() {
  const atom = User.use()
  const value = useAtomValue(atom)
  return React.createElement("span", null, value)
}

export function App() {
  return React.createElement(
    User.Provider,
    { value: "Ada" },
    React.createElement(UserName)
  )
}
```

**Signature**

```ts
declare const make: <A extends Atom.Atom<any>, Input = never>(f: (() => A) | ((input: Input) => A)) => ScopedAtom<A, Input>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/atom/react/src/ScopedAtom.ts#L108)

Since v4.0.0