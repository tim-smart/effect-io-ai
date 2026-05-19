Package: `@effect/atom-react`<br />
Module: `ScopedAtom`<br />

## ScopedAtom.make

Creates a ScopedAtom from a factory function.

**Example** (Creating a scoped atom with input)

```ts
import * as AtomReact from "@effect/atom-react"
import { Atom } from "effect/unstable/reactivity"
import * as React from "react"

const User = AtomReact.make((name: string) => Atom.make(name))

function UserName() {
  const atom = User.use()
  const value = AtomReact.useAtomValue(atom)
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

[Source](https://github.com/Effect-TS/effect/tree/main/packages/atom/react/src/ScopedAtom.ts#L106)

Since v4.0.0