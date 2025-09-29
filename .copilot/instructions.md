# Project-Specific Copilot Instructions

## Project Context
This project is a **real-time particle physics simulation** built with pygame + numpy.

## Architecture
- **Language**: Python 3.x
- **Core Libraries**: pygame, numpy
- **Structure**: 
  - `particle_fluid.py`: Core physics simulation class
  - `main.py`: Entry point
- **Performance**: Real-time 60 FPS with vectorized numpy operations

## Domain-Specific Patterns

### Physics Simulation Focus
- **Vectorized Operations**: Always use numpy arrays for bulk particle operations
- **Performance Critical**: Prioritize efficiency for real-time simulation
- **State Management**: Particles use parallel arrays indexed by particle ID
- **Collision Detection**: Uses spatial hashing for performance optimization

### Code Style
- **Comments**: German language for UI text and console output
- **Method Naming**: `verb_noun_descriptor` pattern (e.g., `update_particles_vectorized`)
- **Constants**: Physics parameters as class attributes with descriptive comments

### Stacking Physics Specialization
- **Collision Types**: Different physics for vertical vs horizontal collisions
- **Support Detection**: Track particles resting on ground or other particles
- **Stability Thresholds**: Velocity-based rest detection for stack formation
- **Directional Damping**: Specialized friction for stable stacking behavior

## Performance Considerations
- Use vectorized numpy operations over loops
- Spatial hashing for collision detection (`cell_size = 15`)
- Track processed collision pairs to avoid duplicates
- Extensive performance logging (FPS, particle counts)

## Critical Parameters
These physics constants work together for stable stacking:
- `min_separation = 0.95`: Allows slight overlap for stable stacks  
- `stacking_threshold = 0.3`: Velocity threshold for rest detection
- `ground_friction = 0.8`: Strong horizontal damping at boundaries
- `bounce = 0.2`: Low restitution for stack stability

## Integration Requirements
- Real-time pygame event loop integration
- Mouse interaction for particle spawning
- German UI with specific key mappings (LEERTASTE, R, G, C, S)