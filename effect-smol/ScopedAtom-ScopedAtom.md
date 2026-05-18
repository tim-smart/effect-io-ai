Package: `@effect/atom-react`<br />
Module: `ScopedAtom`<br />

## ScopedAtom.ScopedAtom

Scoped Atom interface with a provider-backed instance.

**Example** (Providing and reading a scoped atom)

```ts
import * as Atom from "effect/unstable/reactivity/Atom"
import * as React from "react"
import * as ScopedAtom from "@effect/atom-react/ScopedAtom"
import { useAtomValue } from "@effect/atom-react"

const Counter = ScopedAtom.make(() => Atom.make(0))

function View() {
  const atom = Counter.use()
  const value = useAtomValue(atom)
  return React.createElement("div", null, value)
}

export function App() {
  return React.createElement(Counter.Provider, null, React.createElement(View))
}
```

**Signature**

```ts
export interface ScopedAtom<A extends Atom.Atom<any>, Input = never> {
  readonly [TypeId]: TypeId
  use(): A
  Provider: [Input] extends [never] ? React.FC<{ readonly children?: React.ReactNode | undefined }>
    : React.FC<{ readonly children?: React.ReactNode | undefined; readonly value: Input }>
  Context: React.Context<A>
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/atom/react/src/ScopedAtom.ts#L69)

Since v4.0.0