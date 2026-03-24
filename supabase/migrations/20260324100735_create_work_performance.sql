-- work_performance 테이블 생성
CREATE TABLE IF NOT EXISTS work_performance (
  id          SERIAL PRIMARY KEY,
  category    TEXT NOT NULL,
  tier        INTEGER NOT NULL,
  icon        TEXT NOT NULL,
  name        TEXT NOT NULL,
  description TEXT NOT NULL,
  level       TEXT NOT NULL,
  sort_order  INTEGER DEFAULT 0,
  UNIQUE(category, tier, name)
);

ALTER TABLE work_performance DISABLE ROW LEVEL SECURITY;

-- VIDEO 60
INSERT INTO work_performance (category, tier, icon, name, description, level, sort_order) VALUES
('video', 60, '🎞️', 'FHD 영상 편집', '기본 컷편집 가능, 효과 추가 시 버벅임', 'mid', 1),
('video', 60, '📺', 'QHD 영상 편집', 'QHD 편집 버벅임 심함 — 비추천', 'no', 2),
('video', 60, '🎬', '4K 영상 편집', '4K 편집 불가', 'no', 3),
('video', 60, '⚡', '다중 트랙 편집', '레이어 2~3개 이상 버벅임', 'no', 4),
('video', 60, '🖥️', '렌더링 속도', 'FHD 5분 영상 기준 약 20~30분 소요', 'lo', 5)
ON CONFLICT (category, tier, name) DO UPDATE SET description=EXCLUDED.description, level=EXCLUDED.level;

-- VIDEO 100
INSERT INTO work_performance (category, tier, icon, name, description, level, sort_order) VALUES
('video', 100, '🎞️', 'FHD 영상 편집', 'FHD 편집 쾌적, 간단한 효과 실시간 처리', 'ok', 1),
('video', 100, '📺', 'QHD 영상 편집', 'QHD 기본 편집 가능, 복잡한 효과 느림', 'mid', 2),
('video', 100, '🎬', '4K 영상 편집', '4K 컷편집만 가능, 효과 렌더링 필요', 'lo', 3),
('video', 100, '⚡', '다중 트랙 편집', 'FHD 기준 4~6개 트랙 편집 가능', 'mid', 4),
('video', 100, '🖥️', '렌더링 속도', 'FHD 5분 영상 기준 약 8~12분 소요', 'mid', 5)
ON CONFLICT (category, tier, name) DO UPDATE SET description=EXCLUDED.description, level=EXCLUDED.level;

-- VIDEO 120
INSERT INTO work_performance (category, tier, icon, name, description, level, sort_order) VALUES
('video', 120, '🎞️', 'FHD 영상 편집', 'FHD 편집 완벽, 고급 효과 실시간 처리', 'ok', 1),
('video', 120, '📺', 'QHD 영상 편집', 'QHD 편집 쾌적, 복잡한 효과도 원활', 'ok', 2),
('video', 120, '🎬', '4K 영상 편집', '4K 편집 쾌적, 기본 색보정 실시간 가능', 'ok', 3),
('video', 120, '⚡', '다중 트랙 편집', '4K 기준 4~6개 트랙 멀티레이어 편집 가능', 'ok', 4),
('video', 120, '🖥️', '렌더링 속도', 'FHD 5분 영상 기준 약 3~5분 소요', 'ok', 5)
ON CONFLICT (category, tier, name) DO UPDATE SET description=EXCLUDED.description, level=EXCLUDED.level;

-- VIDEO 140
INSERT INTO work_performance (category, tier, icon, name, description, level, sort_order) VALUES
('video', 140, '🎞️', 'FHD 영상 편집', '모든 FHD 작업 완벽', 'ok', 1),
('video', 140, '📺', 'QHD 영상 편집', 'QHD 고급 효과·VFX 실시간 처리', 'ok', 2),
('video', 140, '🎬', '4K 영상 편집', '4K 멀티트랙·고급 색보정·실시간 미리보기', 'ok', 3),
('video', 140, '⚡', '다중 트랙 편집', '4K 8트랙 이상 복잡한 시퀀스 가능', 'ok', 4),
('video', 140, '🖥️', '렌더링 속도', 'FHD 5분 영상 기준 약 1~2분 소요', 'ok', 5)
ON CONFLICT (category, tier, name) DO UPDATE SET description=EXCLUDED.description, level=EXCLUDED.level;

-- VIDEO 160
INSERT INTO work_performance (category, tier, icon, name, description, level, sort_order) VALUES
('video', 160, '🎞️', 'FHD·QHD 영상 편집', '모든 해상도 제약 없이 완벽 지원', 'ok', 1),
('video', 160, '📺', '4K·8K 영상 편집', '8K 영상 편집·복잡한 VFX 실시간 처리', 'ok', 2),
('video', 160, '🎬', '방송 수준 편집', '방송·영화 수준의 편집 환경 지원', 'ok', 3),
('video', 160, '⚡', '다중 트랙 편집', '8K 기준 고복잡도 멀티트랙 자유롭게 가능', 'ok', 4),
('video', 160, '🖥️', '렌더링 속도', 'FHD 5분 영상 기준 약 30초~1분 소요', 'ok', 5)
ON CONFLICT (category, tier, name) DO UPDATE SET description=EXCLUDED.description, level=EXCLUDED.level;

-- OFFICE 60
INSERT INTO work_performance (category, tier, icon, name, description, level, sort_order) VALUES
('office', 60, '📄', '문서 작업', 'Word·Excel·PPT 기본 작업 쾌적', 'ok', 1),
('office', 60, '🌐', '웹브라우저 멀티탭', '탭 10개 이하 원활, 그 이상 느려짐', 'mid', 2),
('office', 60, '📹', '화상회의', 'Zoom·Teams 기본 화상회의 가능', 'ok', 3),
('office', 60, '🖼️', '포토샵·이미지 편집', '간단한 보정 작업 가능, 고해상도 느림', 'mid', 4),
('office', 60, '🔀', '멀티태스킹', '프로그램 2~3개 동시 실행 가능', 'mid', 5)
ON CONFLICT (category, tier, name) DO UPDATE SET description=EXCLUDED.description, level=EXCLUDED.level;

-- OFFICE 100
INSERT INTO work_performance (category, tier, icon, name, description, level, sort_order) VALUES
('office', 100, '📄', '문서 작업', '대용량 엑셀·복잡한 수식도 빠르게 처리', 'ok', 1),
('office', 100, '🌐', '웹브라우저 멀티탭', '탭 20개 이상도 원활하게 사용 가능', 'ok', 2),
('office', 100, '📹', '화상회의', '고화질 화상회의·화면 공유 동시 지원', 'ok', 3),
('office', 100, '🖼️', '포토샵·이미지 편집', '포토샵·일러스트레이터 원활하게 사용', 'ok', 4),
('office', 100, '🔀', '멀티태스킹', '4~5개 프로그램 동시 실행 쾌적', 'ok', 5)
ON CONFLICT (category, tier, name) DO UPDATE SET description=EXCLUDED.description, level=EXCLUDED.level;

-- OFFICE 120
INSERT INTO work_performance (category, tier, icon, name, description, level, sort_order) VALUES
('office', 120, '📄', '문서 작업', '어떤 문서 환경도 완벽 지원', 'ok', 1),
('office', 120, '🌐', '웹브라우저 멀티탭', '수십 개 탭·멀티 브라우저 동시 사용 가능', 'ok', 2),
('office', 120, '📹', '화상회의', '4K 화상회의·다중 참가자 화면 처리 완벽', 'ok', 3),
('office', 120, '🖼️', '포토샵·이미지 편집', 'RAW 대용량 파일·복잡한 이펙트 실시간', 'ok', 4),
('office', 120, '🔀', '멀티태스킹', '10개 이상 프로그램 동시 실행 쾌적', 'ok', 5)
ON CONFLICT (category, tier, name) DO UPDATE SET description=EXCLUDED.description, level=EXCLUDED.level;

-- OFFICE 140
INSERT INTO work_performance (category, tier, icon, name, description, level, sort_order) VALUES
('office', 140, '📄', '문서 작업', '모든 협업·문서 환경 완벽 지원', 'ok', 1),
('office', 140, '🌐', '웹브라우저 멀티탭', '멀티 브라우저 + 스트리밍 동시에 완벽', 'ok', 2),
('office', 140, '📹', '화상회의', '다중 고화질 화상회의·라이브 방송 동시 가능', 'ok', 3),
('office', 140, '🖼️', '포토샵·이미지 편집', 'AI 보정·초대형 파일 즉시 처리', 'ok', 4),
('office', 140, '🔀', '멀티태스킹', '제약 없는 멀티태스킹 환경', 'ok', 5)
ON CONFLICT (category, tier, name) DO UPDATE SET description=EXCLUDED.description, level=EXCLUDED.level;

-- OFFICE 160
INSERT INTO work_performance (category, tier, icon, name, description, level, sort_order) VALUES
('office', 160, '📄', '문서 작업', '퍼포먼스 최대 — 제약 없음', 'ok', 1),
('office', 160, '🌐', '웹브라우저 멀티탭', '수백 개 탭도 완벽하게 처리', 'ok', 2),
('office', 160, '📹', '화상회의', '8K 스트리밍·다중 방송 동시 운영 가능', 'ok', 3),
('office', 160, '🖼️', '포토샵·AI 보정', 'AI 보정·초대용량 RAW 즉시 처리', 'ok', 4),
('office', 160, '🔀', '멀티태스킹', '수십 개 고사양 앱 동시 실행 완벽', 'ok', 5)
ON CONFLICT (category, tier, name) DO UPDATE SET description=EXCLUDED.description, level=EXCLUDED.level;

-- MODELING 60
INSERT INTO work_performance (category, tier, icon, name, description, level, sort_order) VALUES
('modeling', 60, '📐', 'AutoCAD 2D', '2D 도면 작업 가능, 복잡한 도면 느림', 'mid', 1),
('modeling', 60, '🧊', 'Blender 모델링', '기초 모델링 가능, 복잡한 씬 버벅임', 'lo', 2),
('modeling', 60, '💡', '3D 렌더링', '저해상도 렌더링만 가능 — 실무 비추천', 'no', 3),
('modeling', 60, '🏢', 'BIM (Revit 등)', 'BIM 작업 불가', 'no', 4),
('modeling', 60, '🔬', '시뮬레이션', '시뮬레이션 작업 불가', 'no', 5)
ON CONFLICT (category, tier, name) DO UPDATE SET description=EXCLUDED.description, level=EXCLUDED.level;

-- MODELING 100
INSERT INTO work_performance (category, tier, icon, name, description, level, sort_order) VALUES
('modeling', 100, '📐', 'AutoCAD 2D·3D', '2D·기초 3D CAD 작업 원활', 'ok', 1),
('modeling', 100, '🧊', 'Blender 모델링', '중급 모델링 가능, 고폴리 씬 느림', 'mid', 2),
('modeling', 100, '💡', '3D 렌더링', 'FHD 기준 저~중간 품질 렌더링 가능', 'lo', 3),
('modeling', 100, '🏢', 'BIM (Revit 등)', '소규모 BIM 프로젝트 가능', 'lo', 4),
('modeling', 100, '🔬', '시뮬레이션', '간단한 물리 시뮬레이션만 가능', 'no', 5)
ON CONFLICT (category, tier, name) DO UPDATE SET description=EXCLUDED.description, level=EXCLUDED.level;

-- MODELING 120
INSERT INTO work_performance (category, tier, icon, name, description, level, sort_order) VALUES
('modeling', 120, '📐', 'AutoCAD·SolidWorks', '3D CAD 작업 원활, 조립 어셈블리 처리 가능', 'ok', 1),
('modeling', 120, '🧊', 'Blender 모델링', '고폴리 모델링·텍스처 작업 쾌적', 'ok', 2),
('modeling', 120, '💡', '3D 렌더링', '중간 품질 3D 렌더링 원활, GPU 렌더 가능', 'mid', 3),
('modeling', 120, '🏢', 'BIM (Revit 등)', '중규모 BIM 프로젝트 가능', 'mid', 4),
('modeling', 120, '🔬', '시뮬레이션', '기초 CFD·구조 시뮬레이션 가능', 'lo', 5)
ON CONFLICT (category, tier, name) DO UPDATE SET description=EXCLUDED.description, level=EXCLUDED.level;

-- MODELING 140
INSERT INTO work_performance (category, tier, icon, name, description, level, sort_order) VALUES
('modeling', 140, '📐', 'AutoCAD·SolidWorks', '대형 어셈블리·복잡한 3D CAD 쾌적', 'ok', 1),
('modeling', 140, '🧊', 'Blender 모델링', '고사양 씬·애니메이션 작업 원활', 'ok', 2),
('modeling', 140, '💡', '3D 렌더링', '고품질 GPU 렌더링 원활, 실시간 프리뷰 가능', 'ok', 3),
('modeling', 140, '🏢', 'BIM (Revit 등)', '대규모 BIM 프로젝트 원활', 'ok', 4),
('modeling', 140, '🔬', '시뮬레이션', '중급 시뮬레이션·유한요소 해석 가능', 'mid', 5)
ON CONFLICT (category, tier, name) DO UPDATE SET description=EXCLUDED.description, level=EXCLUDED.level;

-- MODELING 160
INSERT INTO work_performance (category, tier, icon, name, description, level, sort_order) VALUES
('modeling', 160, '📐', 'AutoCAD·SolidWorks', '최고 수준 대형 어셈블리 제약 없음', 'ok', 1),
('modeling', 160, '🧊', 'Blender 모델링', '영화 수준의 고사양 씬·VFX 작업 가능', 'ok', 2),
('modeling', 160, '💡', '3D 렌더링', '실시간 레이트레이싱·최고품질 렌더링 가능', 'ok', 3),
('modeling', 160, '🏢', 'BIM (Revit 등)', '초대형 BIM 프로젝트·클라우드 연동 완벽', 'ok', 4),
('modeling', 160, '🔬', '시뮬레이션', '고급 CFD·구조·열해석 시뮬레이션 가능', 'ok', 5)
ON CONFLICT (category, tier, name) DO UPDATE SET description=EXCLUDED.description, level=EXCLUDED.level;
